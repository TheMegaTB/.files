echo $(cat "${DOTFILES}/setup/packages/${1}.packages" | grep -v '#')
