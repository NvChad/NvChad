#!/bin/sh

_usage() {
  printf "%s" \
    "Usage: sh ${0##*/} [ options ]
    -h | --help          => Show this help.

    -i | --install       => Install the config.

    -u | --update        => Update the existing config without removing existing stuff.

    -b | --backup 'path' => Custom config backup path.

    -nb | --no-backup    => Don't take existing config backup. Use with caution.
"
  exit 0
}

_check_install_dependencies() {
  _error_dependencies() {
    printf "%s\n" "Error: Install ${1} before proceeding."
    exit 1
  }
  command -v git 1>/dev/null || _error_dependencies git
  _SED="$(command -v sed)" || _error_dependencies sed
  return 0
}

_check_nvim_version() {
  version_string="$(nvim --version | grep -Eo 'NVIM.*v[0-9.]+' -m 1 | grep -Eo '[0-9.]+')" || return 1
  printf "%s\n" "${version_string}" | while IFS=. read -r num1 num2 num3; do
    { [ "${num1}" -ge 0 ] && [ "${num2}" -ge 5 ] && [ "${num3}" -ge 0 ]; } || return 1
  done
}

_copy_config() {
  printf "%s\n" "Linking config"
  printf "%s\n" "Old nvim config will be changed to nvim.bak if exists! :0"

  # copying config
  if [ -d "${_CONFIG_PATH}" ]; then
    printf "%s\n" "Nvim Directory exists"
    if [ "${_NO_BACKUP}" = "true" ]; then
      printf "%s\n" "Skipping backup as --no-backup flag was passed.."
      [ "${_UPDATE}" = "false" ] && rm -rf "${_CONFIG_PATH}"
    else
      printf "%s\n" "Taking backup of existing config.."
      mv "${_CONFIG_PATH}" "${_BACKUP_PATH}" || {
        printf "\n%s\n" "Error: Cannot move ${_CONFIG_PATH} to ${_BACKUP_PATH}"
        printf "\n%s\n" "Take backup manually or use -b/--backup to provide non-empty path or use -nb/--no-backup to skip backup."
        exit 1
      }
    fi
  else
    printf "%s\n" "Nvim config doesn't exist, creating it now"
  fi

  mkdir -p "${_CONFIG_PATH}" || {
    printf "%s\n" "Error: Cannot create folder ${_CONFIG_PATH}"
    exit 1
  }

  { cp -r init.lua lua "${_CONFIG_PATH}"/; } || {
    printf "Error: Couldn't copy nvim config\n"
    exit 1
  }
  return 0
}

_setup_terminal_shell() {
  _mappings_file="${_CONFIG_PATH}/lua/mappings.lua"
  # only ask for shellname if running in terminal
  if [ -t 1 ]; then
    if chsh -l 2>/dev/null 1>&2; then
      printf "\nAvailable Shells:\n"
      chsh -l | nl
      printf "\n%s\n" "Which shell do you want to use? (Eg. 2)"
      printf "\t%s\n" "[ Enter nothing for current shell ( $_CURRENT_SHELL ) ]"
      read -r shellnum
      [ "${shellnum}" -gt 0 ] 2>/dev/null && _SHELLPATH="$(chsh -l | sed -n "$shellnum p")"
    fi
  fi

  # don't try to do any changes user wants their default shell in nvim
  if [ -n "$_SHELLPATH" ]; then
    # Reference: https://stackoverflow.com/a/4247319
    # \( & \) will use regex brackets (for later reference with \1)
    # ( & ) will match text brackets
    if "${_SED}" --posix -i'.bak' -e "s=^\(map(.* \+*terminal\) \(.*)\)=\1$_SHELLPATH \2=g" "${_mappings_file}"; then
      printf "%s\n" "=> Neovim shell changed to $_SHELLPATH successfully!"
    else
      printf "%s\n" "Cannot edit with sed, edit ${_mappings_file} manually to replace bash with $_SHELLPATH."
    fi
    rm -f "${_mappings_file}".bak # delete backup file created by sed
  fi
  printf "%s\n" "=> Neovim shell will be ${_SHELLPATH:-${_CURRENT_SHELL}}"
  return 0
}
_setup_arguments() {
  # default variables to be used
  _CONFIG_PATH="${XDG_CONFIG_HOME:-${HOME}/.config}/nvim"
  _UPDATE=""
  _BACKUP_PATH="${_CONFIG_PATH}.bak"
  _NO_BACKUP="false"
  _CURRENT_SHELL="${SHELL##*/}"

  _check_longoptions() {
    [ -z "${2}" ] &&
      printf '%s: %s: option requires an argument\nTry '"%s -h/--help"' for more information.\n' "${0##*/}" "${1}" "${0##*/}" &&
      exit 1
    return 0
  }

  while [ $# -gt 0 ]; do
    case "${1}" in
    -h | --help) _usage ;;
    -i | --install) _UPDATE="false" ;;
    -u | --update) _UPDATE="true" ;;
    -b | --backup)
      _check_longoptions "${1}" "${2}"
      _BACKUP_PATH="${2}" && shift
      ;;
    -nb | --nobackup) _NO_BACKUP="true" ;;
    esac
    shift
  done

  [ -z "${_UPDATE}" ] && {
    printf "%s\n" "Error: Either -i/--install or -u/--update flag must be used."
    printf "%s\n" "See -h/--help for more info."
    exit 1
  }

  printf "%s\n" \
    "CONFIG PATH: ${_CONFIG_PATH}
$(if [ "${_NO_BACKUP}" = "true" ]; then
      printf "SKIPPING CONFIG BACKUP !\n"
    else
      printf "%s\n" "CONFIG BACKUP PATH: ${_BACKUP_PATH}"
    fi)
CURRENT SHELL: ${_CURRENT_SHELL}
"

  return 0
}

main() {
  [ $# = 0 ] && _usage

  _check_install_dependencies

  _setup_arguments "${@}"
  _copy_config
  [ "${_UPDATE}" = "false" ] && _setup_terminal_shell

  # install all plugins + compile them
  if _NVIM="$(command -v nvim)"; then
    if _check_nvim_version; then
      printf "\n%s\n" "=> Neovim will now open." && sleep 1
      "${_NVIM}" +"autocmd User PackerComplete ++once quitall" \
        +":lua require 'pluginList' vim.cmd('PackerSync')"
      "${_NVIM}"
    else
      printf "Error: Neovim is installed, but version is lower than 0.5.x, install Neovim >= 5.x and then run nvim & do :PackerSync\n."
    fi
  else
    printf "Error: Neovim is not installed, install Neovim >= 5.x and then run neovim & do :PackerSync.\n"
  fi
}

main "${@}"
