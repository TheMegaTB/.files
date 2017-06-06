export DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

${DOTFILES}/setup/submodule.sh
read -n 1 -p "Press ENTER to continue (next step: yaourt install)"
${DOTFILES}/setup/install_yaourt.sh
read -n 1 -p "Press ENTER to continue (next step: symlinking)"
${DOTFILES}/setup/create_symlinks.sh
read -n 1 -p "Press ENTER to continue (next step: baseline setup)"
${DOTFILES}/setup/install_baseline.sh
read -n 1 -p "Press ENTER to continue (next step: shell packages install)"
pacaur -Syy --noconfirm --noedit $(${DOTFILES}/setup/get_packages.sh shell)
read -n 1 -p "Press ENTER to continue (next step: development environment)"
pacaur -Syy --noconfirm --noedit $(${DOTFILES}/setup/get_packages.sh development)
read -n 1 -p "Press ENTER to continue (next step: x11 and audio)"
pacaur -Syy --noconfirm --noedit $(${DOTFILES}/setup/get_packages.sh x11)
pacaur -Syy --noconfirm --noedit $(${DOTFILES}/setup/get_packages.sh audio)
