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
BULLETTRAIN_CONTEXT_SHOW=true
BULLETTRAIN_CONTEXT_DEFAULT_USER="themegatb"
BULLETTRAIN_EXEC_TIME_SHOW=true

BULLETTRAIN_PROMPT_ORDER=(time context dir git end)

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle autojump
antigen bundle npm
antigen bundle last-working-dir
antigen bundle common-aliases

# Some other bundles
antigen bundle Tarrasch/zsh-autoenv
antigen bundle djui/alias-tips
antigen bundle arzzen/calc.plugin.zsh
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle peterhurford/git-it-on.zsh
antigen bundle jimhester/per-directory-history
antigen bundle robertzk/send.zsh

# zsh-users bundles
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting

# antigen bundle common-aliases
# antigen bundle Tarrasch/zsh-autoenv
# antigen bundle zsh-users/zsh-completions
# # antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
# antigen bundle djui/alias-tips
# antigen bundle arzzen/calc.plugin.zsh
# antigen bundle adolfoabegg/browse-commit
# antigen bundle unixorn/autoupdate-antigen.zshplugin
# #antigen bundle tymm/zsh-directory-history
# antigen bundle peterhurford/git-it-on.zsh

# Tell antigen that you're done.
antigen apply

lwd

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


export VISUAL=nvim
export EDITOR="$VISUAL"

eval $(ssh-agent) >/dev/null

eval "$(thefuck --alias)"
eval "$(fasd --init posix-alias zsh-hook zsh-ccomp zsh-wcomp zsh-ccomp-install zsh-wcomp-install)"


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
alias 'rc'='openrc'
alias 'umountusb'='sudo umount /mnt/usb'

# Todo figure out why this needs to be here
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle peterhurford/git-it-on.zsh
/home/themegatb/.startx.sh
