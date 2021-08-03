#!/bin/sh

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
    exit 0
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

# _install() {}
_remove() {
    prompt -i "-> Cleaning '$HOME/.config/nvim/'"
    # rm -rf "$HOME/.config/nvim/"

    prompt -i "-> Cleaning '$HOME/.local/share/nvim/'"
    # rm -rf "$HOME./local/share/nvim/"
}
# _update() {}

main() {
    while :; do
        case $1 in
        -h | -\? | --help)
            _usage
            exit 0
            ;;
        -i | --install)
            _install
            ;;
        -r | --remove)
            _remove
            _eval_exit $? "Successfully removeed NvChad!" "Failed to remove NvChad"
            ;;
        *) # Default case: No more options, so break out of the loop.
            break
            ;;
        esac
        shift
    done

}

init() {
    if [ $# -eq 0 ]; then
        prompt -e "ERROR: This script needs at least one argument"
    else
        main "${@}"
    fi
}

init "${@}"
