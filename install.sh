#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

REPO="https://github.com/siduck76/NvChad.git"

skip=0
nvchad_path="$HOME/.config/nvim/"
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
    -h, --help         -> Show this help.
    -i, --install      -> Install the config.
    -r, --remove       -> Remove the config.
    -u, --update       -> Update the existing config without removing existing stuff.
"
}

_remove() {
	prompt -w "Removing config ->	  ($HOME/.config/nvim/)"
	# rm -rf "$HOME/.config/nvim/"
	prompt -w "Removing miscellaneous -> ($HOME/.local/share/nvim/)"
	# rm -rf "$HOME/.local/share/nvim/"
	prompt -w "Removing cache ->	  ($HOME/.cache/nvim/)"
	# rm -rf "$HOME/.cache/nvim/"
}

_check_dependencies() {
	local err

    for i in "${dependencies[@]}"; do
		
		if ! command -v "${i}" &> /dev/null
		then
			prompt -e "Error: You need to install the dependency '${i}'"
			err="true"
		fi
	done

	if [[ "${err}" == "true" ]]; then
		exit 1
	fi
}

_fetch() {
	printf "  + %s\n" "$(prompt -i "Fetching repo...")"
	git clone -n ${REPO} --depth 1 "${nvchad_path}"
	cd "${nvchad_path}" || return

	printf "  + %s\n" "$(prompt -i "Checking out core...")"
	git checkout HEAD lua/
	printf "  + %s\n" "$(prompt -i "Checking out init file...")"
	git checkout HEAD init.lua
}

_install() {
	prompt -w "-> Checking dependencies..."
	_check_dependencies
	prompt -w "-> Cloning..."
	_fetch
}

# _update() {}

_skip_ahead() {
	amount=$1
	skip=$((skip + amount))
}

_parse_args() {
	local func_args=$1
	local argv=("$@")

	unset 'argv[0]' # becuase arg1 is $func_arg
	for i in "${!argv[@]}"; do new_array+=( "${argv[i]}" ); done
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
        --*) # End of all options.
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

    assert_aditional_args() {
        var=$1 # flag
        index=$2 # flag's index
        case ${var} in
		-p=* | --path=*)
			nvchad_path="${var#*=}"
			;;
        esac
    }

    assert_args() {
        var=$1 # flag
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
            ;;
		-p=* | --path=*) ;;
        *)
            prompt -w "Warning: unknown command '${var}'"
            ;;
        esac
    }

	_parse_args "assert_aditional_args" "${argvs[@]}"
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
