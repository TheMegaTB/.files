# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

BULLETTRAIN_CONTEXT_SHOW=true
BULLETTRAIN_CONTEXT_DEFAULT_USER=`whoami`
BULLETTRAIN_EXEC_TIME_SHOW=true
ZSH_THEME="bullet-train"
#ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git pass common-aliases dirhistory last-working-dir sudo alias-tips autojump)

# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

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

export DEFAULT_USER=`whoami`
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="You know you have an alias for that, right? "
export ZSH_PLUGINS_ALIAS_TIPS_EXCLUDES="_"

eval $(ssh-agent) >/dev/null

eval "$(thefuck --alias)"
eval "$(fasd --init posix-alias zsh-hook zsh-ccomp zsh-wcomp zsh-ccomp-install zsh-wcomp-install)"

alias rsync-progress="rsync -avvz --times --stats --checksum --human-readable --acls --itemize-changes --progress --out-format='[%t] [%i] (Last Modified: %M) (bytes: %-10l) %-100n'"
alias o='a -e nano'
alias c='f -e cat'
alias lc='lsc'
alias size='du -sh'
alias 'update-grub'='sudo grub-mkconfig -o /boot/grub/grub.cfg'

source $ZSH/oh-my-zsh.sh

export VISUAL=nano
export EDITOR="$VISUAL"

/home/themegatb/.startx.sh
