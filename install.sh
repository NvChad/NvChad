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
    -h, --help         -> Show this help.
    -i, --install      -> Install the config.
    -r, --remove       -> Remove the config.
    -u, --update       -> Update the existing config without removing existing stuff.
"
}

skip=0

_skip_ahead() {
	amount=$1
	skip=$((skip + amount))
}

_parse_args() {
	local func_args=$1
	local argv=("$@")
	# local skip=0

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

    assert_arg() {
        var=$1 # flag
        index=$2 # flag's index
        case ${var} in
        -h | --help)
            _usage
            ;;
        -i | --install)
            prompt -i "installing..."
            ;;
        -r | --remove)
            prompt -i "removing..."
            ;;
		-a | --action)
			action=${argvs[index+1]}
			prompt -i "Action to perform -> ${action}"
			_skip_ahead 1
			;;
		-p=* | --path=*)
			path="${var#*=}"
			prompt -i "Path was set to -> ${path}"
			;;
        *)
            prompt -w "Warning: unknown command '${var}'"
            ;;
        esac
    }

	_parse_args "assert_arg" "${argvs[@]}"
}


main "${@}"
