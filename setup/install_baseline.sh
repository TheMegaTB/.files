yaourt -Syy pacaur
pacaur -Syy --noconfirm --noedit $(${DOTFILES}/setup/get_packages.sh baseline)
sudo npm install -g $(${DOTFILES}/setup/get_packages.sh npm)
