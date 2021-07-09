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
  _GIT="$(command -v git)" || _error_dependencies git
  _SED="$(command -v sed)" || _error_dependencies sed
  return 0
}

_check_nvim_version() {
  version_string="$(nvim --version | grep -Eo 'NVIM.*v[0-9.]+' -m 1 | grep -Eo '[0-9.]+')" || return 1
  printf "%s\n" "${version_string}" | while IFS=. read -r num1 num2 num3; do
    { [ "${num1}" -ge 0 ] && [ "${num2}" -ge 5 ] && [ "${num3}" -ge 0 ]; } || return 1
  done
}

_setup_packer() {
  _clone_packer() {
    [ -d "${_PACKER_PATH}" ] && rm -rf "${_PACKER_PATH}"

    printf "\n%s\n" "=> Cloning packer.."
    if "${_GIT}" clone "${_PACKER_REPO_URL}" \
      "${_PACKER_PATH}"; then
      printf "%s\n" "=> Packer Installed!"
    else
      printf "Error: Couldn't clone packer\n"
      exit 1
    fi
  }

  if [ "${_UPDATE}" = "true" ]; then
    printf "%s\n" "Updating packer"
    { [ -d "${_PACKER_PATH}" ] \
      && "${_GIT}" -C "${_PACKER_PATH}" pull "${_PACKER_REPO_URL}"; } || _clone_packer
  else
    printf "%s\n" "Installing packer"
    if [ -d ~/.local/share/nvim/site/pack/packer ]; then
      printf "%s\n" "Clearing previous packer installs"
      rm -rf ~/.local/share/nvim/site/pack
    fi
    _clone_packer
  fi
  printf "\n"
  return 0
}

_copy_config() {
  printf "%s\n" "Linking config"
  printf "%s\n" "Old nvim config will be changed to nvim.bak if exists! :0"

  # copying config
  if [ -d "${_CONFIG_PATH}" ]; then
    printf "%s\n" "Nvim Directory exists"
    if [ "${_NO_BACKUP}" = "true" ]; then
      printf "%s\n" "Skipping backup as --no-backup flag was passed.."
    else
      printf "%s\n" "Taking backup of existing config.."
      mv "${_CONFIG_PATH}" "${_BACKUP_PATH}" || {
        printf "\n%s\n" "Error: Cannot move ${_CONFIG_PATH} to ${_BACKUP_PATH}"
        printf "\n%s\n" "Take backup manually or use -b/--backup to provide non-empty path or use -nb/--no-backup to skip backup."
        exit 1
      }
    fi
    printf "%s\n" "Creating new nvim directory"
  else
    printf "%s\n" "Nvim Config doesn't exist so creating one"
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
    printf "%s\n: " "Which shell do you want to use ? [ Enter nothing for current shell ( $_CURRENT_SHELL ) ]"
    read -r shellname
  fi
  shellname="${shellname:-${_CURRENT_SHELL}}"
  printf "%s\n" "$shellname"

  # don't try to do any changes if given shellname is same as bash
  if ! [ bash = "$shellname" ]; then
    # Reference: https://stackoverflow.com/a/4247319
    if "${_SED}" -i'.bak' -e "s/bash/$shellname/g" "${_mappings_file}"; then
      printf "\n%s\n" "=> Shell changed to $shellname on nvim successfully!"
    else
      printf "\n%s\n" "Cannot edit with sed, edit ${_mappings_file} manually to replace bash with $shellname."
    fi
    rm -f "${_mappings_file}".bak # delete backup file created by sed
  else
    printf "\n%s\n" "=> Shell changed to $shellname on nvim successfully!"
  fi
  return 0
}

_setup_arguments() {
  # default variables to be used
  _PACKER_PATH="${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim"
  _PACKER_REPO_URL="https://github.com/wbthomason/packer.nvim"
  _CONFIG_PATH="${HOME}/.config/nvim"
  _UPDATE=""
  _BACKUP_PATH="${_CONFIG_PATH}.bak"
  _NO_BACKUP="false"
  _CURRENT_SHELL="${SHELL##*/}"

  _check_longoptions() {
    [ -z "${2}" ] \
      && printf '%s: %s: option requires an argument\nTry '"%s -h/--help"' for more information.\n' "${0##*/}" "${1}" "${0##*/}" \
      && exit 1
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
  _setup_packer
  _copy_config
  _setup_terminal_shell

  # install all plugins + compile them
  if _NVIM="$(command -v nvim)"; then
    if _check_nvim_version; then
      printf "\n%s\n" "=> Neovim will open with some errors, just press enter" && sleep 1
      "${_NVIM}" +PackerSync
    else
      printf "Error: Neovim is installed, but version is lower than 0.5.x, install Neovim >= 5.x and then run the below command.\n"
      printf "  nvim +PackerSync\n"
    fi
  else
    printf "Error: Neovim is not installed, install Neovim >= 5.x and then run the below command\n"
    printf "  nvim +PackerSync\n"
  fi
}

main "${@}"
