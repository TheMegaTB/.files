yaourt -Syy pacaur
pacaur -Syy --noconfirm --noedit $(cat ${DOTFILES}/setup/baseline.packages)
sudo npm install -g $(cat ${DOTFILES}/setup/npm.packages)
