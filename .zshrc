# ZSH Packages

## Load antigen
source ~/.antigen/antigen.zsh

## Load oh-my-zsh
antigen use oh-my-zsh

## Load the oh-my-zsh theme
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
## Load bullet-train settings
source ${HOME}/.shell/bullet-train

## Load bundles
### Default repo bundles
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle autojump
antigen bundle npm
antigen bundle sudo
antigen bundle last-working-dir
antigen bundle common-aliases
### Various other bundles
antigen bundle arzzen/calc.plugin.zsh
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle peterhurford/git-it-on.zsh
antigen bundle jimhester/per-directory-history
antigen bundle robertzk/send.zsh
antigen bundle hkupty/ssh-agent
### ZSH-Users bundles
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting

# Apply antigen settings
antigen apply


# Load custom functions
source ${HOME}/.shell/helpers


# Define custom aliases
source ${HOME}/.shell/aliases


# Enter the graphical environment
[[ -f ${HOME}/.enter-graphical ]] && ${HOME}/.enter-graphical
