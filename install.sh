#!/usr/bin/env bash

RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

REPO="https://github.com/siduck76/NvChad.git"
BACKUP_PATH="/tmp/nvchad/"
TMP_NVCHAD="/tmp/nvchad_updates/"

skip=0
nvchad_path="$HOME/.config/nvim/"
do_startup="true"
dependencies=(
    "git"
)
preserved_files=(
    "lua/mappings.lua"
    "lua/user_config.lua"
)

# https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
prompt() {
    case ${1} in
    "-s" | "--success")
        printf "${GREEN}%s${NC}\n" "${2}"
        ;;
    "-e" | "--error")
        printf "${RED}%s${NC}\n" "${2}"
        ;;
    "-w" | "--warning")
        printf "${ORANGE}%s${NC}\n" "${2}"
        ;;
    "-i" | "--info")
        printf "${BLUE}%s${NC}\n" "${2}"
        ;;
    *)
        printf "${GREEN}%s${NC}\n" "${2}"
        ;;
    esac
}

_usage() {
    printf "%s" \
        "Usage: ./${0##*/} [ options ]
    -h, --help          -> Show this help.
    -i, --install       -> Install the config.
    -r, --remove        -> Remove the config.
    -u, --update        -> Update the existing config without removing existing stuff.
    -s, --skip-startup  -> Skip starting up nvim after installing the config.
    -c, --clean-backups -> Remove backups (if any) from your system.
    -p=*, --path=*      -> Path to NvChad. Relevant for installing and updating.
"
}

_remove() {
	
	read -p "Are you sure you want to uninstall NvChad? This will 'flush' dirs such as $HOME/.config/nvim/. (y/n): " u_reply

	if [[ "${u_reply}" == "y" ]]; then
		printf "  + %s\n" "$(prompt -w "Removing config        ->	($HOME/.config/nvim/)")"
		rm -rf "$HOME/.config/nvim/"

		printf "  + %s\n" "$(prompt -w "Removing miscellaneous ->	($HOME/.local/share/nvim/)")"
		rm -rf "$HOME/.local/share/nvim/"

		printf "  + %s\n" "$(prompt -w "Removing cache         ->	($HOME/.cache/nvim/)")"
		rm -rf "$HOME/.cache/nvim/"
	elif [[ "${u_reply}" == "n" ]]; then
		prompt -i "Ok, enjoy NvChad :)"
	else
		prompt -e "Error: you must type either 'n' for no or 'y' for yes."
	fi

}

_check_dependencies() {
    local err

    for i in "${dependencies[@]}"; do

        if ! command -v "${i}" &>/dev/null; then
            prompt -e "Error: You need to install the dependency '${i}'"
            err="true"
        fi
    done

    if [[ "${err}" == "true" ]]; then
        exit 1
    fi
}

_fetch() {
    printf "  + %s\n" "$(prompt -i "Cleaning workspace")"
    rm -rf ${nvchad_path}
    printf "  + %s\n" "$(prompt -i "Fetching repo")"
    git clone -n ${REPO} --depth 1 "${nvchad_path}"
    cd "${nvchad_path}" || return

    printf "  + %s\n" "$(prompt -i "Checking out core")"
    git checkout HEAD lua/
    printf "  + %s\n" "$(prompt -i "Checking out init file")"
    git checkout HEAD init.lua
}

_check_prev_conf() {
    if [[ -d "${nvchad_path}" ]]; then
        mkdir -p "${BACKUP_PATH}"
        amount_files=$(ls "${BACKUP_PATH}" | wc -l)
        printf "  + %s\n" "$(prompt -i "Previous config found, backing it up (/tmp/nvchad/backup_${amount_files})")"
        cp -r "${nvchad_path}" "${BACKUP_PATH}backup_${amount_files}"
    fi
}

_check_nvim_version() {
    version_string="$(nvim --version | grep -Eo 'NVIM.*v[0-9.]+' -m 1 | grep -Eo '[0-9.]+')" || return 1
    printf "%s\n" "${version_string}" | while IFS=. read -r num1 num2 num3; do
        { [ "${num1}" -ge 0 ] && [ "${num2}" -ge 5 ] && [ "${num3}" -ge 0 ]; } || return 1
    done
}

_startup() {

    printf "  + %s\n" "$(prompt -i "Checking nvim version")"
    if _NVIM="$(command -v nvim)"; then
        if _check_nvim_version; then
            printf "  + %s\n" "$(prompt -i "NeoVim will open now")"
            sleep 1
            "${_NVIM}" +'autocmd User PackerComplete ++once lua print "Waiting for PackerCompile.." vim.cmd "PackerCompile"' \
                +'autocmd User PackerCompileDone ++once quitall' \
                +'lua print "Wait for PackerUpdate and PackerCompile to complete.." require "pluginList" vim.cmd "PackerUpdate"'
            "${_NVIM}"
        else
            prompt -e "Error: Neovim is installed, but version is lower than 0.5.x, install Neovim >= 5.x and then run nvim & do :PackerSync"
        fi
    else
        prompt -e "Error: Neovim is not installed, install Neovim >= 5.x and then run neovim & do :PackerSync"
    fi
}

_install() {
    prompt -w "-> Checking dependencies..."
    _check_dependencies
    prompt -w "-> Checking for previous confs..."
    _check_prev_conf
    prompt -w "-> Cloning..."
    _fetch

    if [[ "$do_startup" == "true" ]]; then
        prompt -w "-> Loading nvim..."
        _startup
    fi
}

_clean_backups() {
    prompt -w "-> Looking for backups..."
    if [[ -d "${BACKUP_PATH}" ]]; then
        if [[ -z "$(ls -A ${BACKUP_PATH})" ]]; then
            printf "  + %s\n" "$(prompt -w "No backups were found")"
        else
            printf "  + %s\n" "$(prompt -i "Backups were found, removing them...")"
            rm -rf "${BACKUP_PATH}"
        fi
    else
        printf "  + %s\n" "$(prompt -w "No backups were found")"
    fi
}

_update() {

    prompt -w "-> Checking if conf is eligible for being updated..."

    if [[ -z "$(ls -A ${nvchad_path})" ]]; then
        printf "  + %s\n" "$(prompt -e "Error: there is nothing to update")"
    else
        printf "  + %s\n" "$(prompt -i "Updating config")"
        mkdir -p ${TMP_NVCHAD}
        for to_preservef in "${!preserved_files[@]}"; do
            file="${nvchad_path}${preserved_files[to_preservef]}"
            printf "    + %s\n" "$(prompt -i "saving file: ${preserved_files[to_preservef]}")"
            if [[ -e "${file}" ]]; then
                mv "${file}" "${TMP_NVCHAD}"
            fi
        done

        do_startup="false"
        _install

        for to_preservef in "${!preserved_files[@]}"; do
            destination_file="${nvchad_path}${preserved_files[to_preservef]}"
            file_name=$(basename "${preserved_files[to_preservef]}")
            location_path=$(dirname "${destination_file}")
            stored_file="${TMP_NVCHAD}${file_name}"
            printf "    + %s\n" "$(prompt -i "restoring file: ${preserved_files[to_preservef]}")"

            if [[ -e "${stored_file}" ]]; then
                rm -rf "${destination_file}"
                mkdir -p "${location_path}"
                mv "${stored_file}" "${destination_file}"
            fi
        done
        rm -rf "${TMP_NVCHAD}"
    fi
}

_skip_ahead() {
    amount=$1
    skip=$((skip + amount))
}

_reorder_array() {
    local arr=("$@")

    for i in "${!arr[@]}"; do
        new_array+=("${arr[i]}")
    done
    arr=("${new_array[@]}")
    unset new_array

    echo "${arr[@]}"
}

_parse_args() {
    local func_args=$1
    local argv=("$@")

    unset 'argv[0]' # becuase arg1 is $func_arg
    for i in "${!argv[@]}"; do new_array+=("${argv[i]}"); done
    argv=("${new_array[@]}")
    unset new_array

    local argc=${#argv[@]}

    _skip_ahead() {
        amount=$1
        skip=$((skip + amount))
    }

    _clean_arg() {
        arg=$1
        if [[ "$arg" == "--"* ]]; then
            echo "${arg:2}"
        elif [[ "$arg" == "-"* ]]; then
            echo "${arg:1}"
        fi
    }

    for j in "${!argv[@]}"; do
        if [[ ${skip} -gt 0 ]]; then
            left=$((argc - j))
            while [[ ${skip} > ${left} ]]; do ((skip--)); done
            skip=$((skip - 1))
            continue
        fi

        case ${argv[j]} in
        --*) # End of all opt
            case ${argv[j]} in
            --) # End of all options.
                break
                ;;
            *)
                # eval "${func_args}" "$(_clean_arg "${argv[j]}")" "$j"
                eval "${func_args}" "${argv[j]}" "$j"
                ;;
            esac
            ;;
        -*)
            if [[ ${#argv[j]} -le 2 ]]; then
                eval "${func_args}" "${argv[j]}" "$j"
            else
                tangled_args=$(_clean_arg "${argv[j]}")
                for ((k = 0; k < ${#tangled_args}; k++)); do
                    eval "${func_args}" "-${tangled_args:$k:1}" "$j"
                done
            fi
            ;;
        *)
            eval "${func_args}" "${argv[j]}" "$j"
            ;;
        esac
    done
}

main() {
    local argvs=("$@")
    local argc=${#argvs[@]}
    local counter=0

    _set_params() {
        argc=${#argvs[@]}
        counter=0
    }

    _free_arg() {
        local index=$1
        unset 'argvs[index-counter]'
        argvs=($(_reorder_array "${argvs[@]}"))
        ((counter++))
    }

    assert_aditional_args() {
        var=$1   # flag
        index=$2 # flag's index
        case ${var} in
        -p=* | --path=*)
            nvchad_path="${var#*=}"
            _free_arg "${index}"
            ;;
        -s | --skip-startup)
            do_startup="false"
            _free_arg "${index}"
            ;;
        esac
    }

    assert_args() {
        var=$1   # flag
        index=$2 # flag's index
        case ${var} in
        -h | --help)
            _usage
            ;;
        -i | --install)
            prompt -i "Installing NvChad..."
            _install
            ;;
        -r | --remove)
            prompt -i "Removing NvChad..."
            _remove
            ;;
        -u | --update)
            prompt -i "Updating NvChad..."
            _update
            ;;
        -c | --clean-backups)
            prompt -i "Cleaning NvChad backups..."
            _clean_backups
            ;;
        *)
            prompt -w "Warning: --unknown command '${var}'"
            ;;
        esac
    }

    _set_params
    _parse_args "assert_aditional_args" "${argvs[@]}"
    _set_params
    _parse_args "assert_args" "${argvs[@]}"
}

init() {
    if [ $# -eq 0 ]; then
        prompt -e "ERROR: This script needs at least one argument"
    else
        main "${@}"
    fi
}

init "${@}"
