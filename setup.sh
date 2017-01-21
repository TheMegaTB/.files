export DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

${DOTFILES}/setup/submodule.sh
read -n 1 -p "Press ENTER to continue (next step: yaourt install)"
${DOTFILES}/setup/install_yaourt.sh
read -n 1 -p "Press ENTER to continue (next step: symlinking)"
${DOTFILES}/setup/create_symlinks.sh
read -n 1 -p "Press ENTER to continue (next step: base packages install)"
${DOTFILES}/setup/install_baseline.sh
