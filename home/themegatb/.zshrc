cd ${HOME}
export _ANTIGEN_CACHE_ENABLED=false
source ~/.antigen-repo/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Set keybindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[[d' backward-word
bindkey '^[[c' forward-word

# Load the theme
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
BULLETTRAIN_PROMPT_ORDER=(
    time
    status
    custom
    context
    dir
    perl
    ruby
    virtualenv
    go
    git
    hg
    cmd_exec_time
)
BULLETTRAIN_CONTEXT_DEFAULT_USER="themegatb"
#BULLETTRAIN_PROMPT_ORDER=(time context dir git end)

# Bundles from the default repo (robbyrussell's oh-my-zsh).
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

# Some other bundles
#antigen bundle Tarrasch/zsh-autoenv
antigen bundle arzzen/calc.plugin.zsh
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle peterhurford/git-it-on.zsh
antigen bundle jimhester/per-directory-history
antigen bundle robertzk/send.zsh
antigen bundle hkupty/ssh-agent

# zsh-users bundles
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting

# Tell antigen that you're done.
antigen apply

# Run some important commands
eval "$(thefuck --alias)"
eval "$(fasd --init posix-alias zsh-hook zsh-ccomp zsh-wcomp zsh-ccomp-install zsh-wcomp-install)"

# Create the zsh cache directory
ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi


# Add user specific bin directory to path
if [ -d "${HOME}/.bin" ]; then
    PATH="${HOME}/.bin:${PATH}"
fi

PATH="$(ruby -rubygems -e "puts Gem.user_dir")/bin:$HOME/.cargo/bin:${PATH}"

# Define some awesome functions
extract () {
  if [ -f $1 ] ; then
      case $1 in
			*.tar.bz2)   tar xjf $1   ;;  
			*.tar.gz)    tar xzf $1   ;;  
			*.bz2)       bunzip2 $1   ;;  
			*.rar)       unrar x $1     ;;  
			*.gz)        gunzip $1    ;;  
			*.tar)       tar xf $1    ;;  
			*.tbz2)      tar xjf $1   ;;  
			*.tgz)       tar xzf $1   ;;  
			*.zip)       unzip $1     ;;  
			*.Z)         uncompress $1;;
			*.7z)        7z x $1      ;;  
			*.xz)        unxz $1    ;;
			*)           echo "'$1' cannot be extracted via extract" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi  
}


# Set text editor preference
export VISUAL=nvim
export EDITOR="$VISUAL"

# Set the GO language directory
export GOPATH=~/.go

# Set some aliases
alias rsync-progress="rsync -avvz --times --stats --checksum --human-readable --acls --itemize-changes --progress --out-format='[%t] [%i] (Last Modified: %M) (bytes: %-10l) %-100n'"
alias o="a -e $EDITOR"
alias c='f -e cat'
alias lc='lsc'
alias size='du -sh'
alias 'update-grub'='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias 'cgr'='cargo run --release'
alias 'cgrb'='cgr --bin'
alias 'nano'='nvim'
alias ':q'='exit'
alias ':wq'='exit'
alias 'rc'='openrc'
alias 'umountusb'='sudo umount /mnt/usb'
alias 'wake-wallace'='echo "$(hostname) is going to knock on wallace door. Hang on a sec...\n" && wakeonlan 4C:72:B9:43:A3:15 && sh -c "until ping -c1 wallace &>/dev/null; do :; done"'
alias 'rshift'='redshift -l 51:10 -t 5500:2000 &'

lwd

# Launch the graphical session if it is not present 
[[ -f ${HOME}/.startx.sh ]] && ${HOME}/.startx.sh
