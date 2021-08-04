#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

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
        "Usage: sh ${0##*/} [ options ]
    -h  | --help         => Show this help.
    -i  | --install      => Install the config.
    -r  | --remove       => Remove the config.
    -u  | --update       => Update the existing config without removing existing stuff.
"
}

_eval_exit() {
    status=$1
    suc_msg=$2
    err_msg=$3

    case $status in
    0)
        prompt -s "${suc_msg}"
        ;;
    *)
        prompt -e "${err_msg}"
        ;;
    esac

}

_check_dependencies() {
    _error_dependencies() {
        prompt -r "Error: Install ${1} before proceeding."
        exit 1
    }
    command -v git 1>/dev/null || _error_dependencies git
    return 0
}

_install() {
    _check_dependencies
}

_remove() {
    prompt -i "-> Cleaning config ($HOME/.config/nvim/)"
    # rm -rf "$HOME/.config/nvim/"

    prompt -i "-> Cleaning miscellaneous ($HOME/.local/share/nvim/)"
    # rm -rf "$HOME/.local/share/nvim/"

    prompt -i "-> Cleaning cache ($HOME/.cache/nvim/)"
    # rm -rf "$HOME/.cache/nvim/"
}
# _update() {}

_init_settings() {
    no_backup="false"
    install="false"
    uninstall="false"
}

_clean_arg() {
    arg=$1
    if [[ "$arg" == "--"* ]]; then
        echo "${arg:2}"
    elif [[ "$arg" == "-"* ]]; then
        echo "${arg:1}"
    fi
}


_parse_args() {
	local args_func=$1
	local argv=("$@")
    local argc=${#argv[@]}
	local skip=0

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
                eval "${eval_args}" "$(_clean_arg "${argv[j]}")" "$j"
                ;;
            esac
            ;;
        -*)
            tangled_args=$(_clean_arg "${argv[j]}")
            for ((k = 0; k < ${#tangled_args}; k++)); do
                eval "${eval_args}" "${tangled_args:$k:1}" "$j"
            done
            ;;
        *)
            prompt -w "Warning: flag ''${argv[j]}' not recognized"
            ;;
        esac
    done
}

main() {
    local argv=("$@")
    local argc=${#argv[@]}
    local skip=0

    assert_arg() {
        var=$1
        index=$2
        case ${var} in
        h | help)
            _usage
            ;;
        i | install)
            prompt -i "installing..."
            ;;
        r | remove)
            prompt -i "removing..."
            ;;
		# p | --path
        *)
            prompt -w "Warning: flag '${var}' not recognized"
            ;;
        esac
    }

    _skip_ahead() {
        amount=$1
        skip=$((skip + amount))
    }

	# works for:
	# 1. normal flags (e.g. -h,--help)
	# 2. nested flags (e.g. -ivh)
	# 3. space sperated flags and args (e.g. --option argument)
	# 4. equal separated flags and args (e.g. --option=argument)


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
                assert_arg "$(_clean_arg "${argv[j]}")" "$j"
                ;;
            esac
            ;;
        -*)
            tangled_args=$(_clean_arg "${argv[j]}")
            for ((k = 0; k < ${#tangled_args}; k++)); do
                assert_arg "${tangled_args:$k:1}" "$j"
            done
            ;;
        *)
            prompt -w "Warning: flag ''${argv[j]}' not recognized"
            ;;
        esac
    done
}

init() {
    if [ $# -eq 0 ]; then
        prompt -e "ERROR: This script needs at least one argument"
    else
        _init_settings
        main "${@}"
    fi
}

init "${@}"
