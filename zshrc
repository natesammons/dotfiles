# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

## add various brew "non-g" binaries to the head of the path
for lib in $( ls -1 /usr/local/opt ); do
  export PATH="/usr/local/opt/$lib/libexec/gnubin:$PATH"
done
export PATH="/usr/local/bin:$PATH"

# man page paths
export MANPATH="/usr/local/share/man:$MANPATH"

## update path completions paths before oh-my-zsh inits
fpath=(
	/usr/local/share/zsh/site-functions
	/usr/local/share/zsh-completions
	$fpath
)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

###############################################################################
## Use PowerLevel9K theme
ZSH_THEME="powerlevel9k/powerlevel9k"

## view colors
# getColorCode background
# getColorCode foreground

## Use "SourceCodePro Nerd Font" (not the 'mono' version)
# from https://nerdfonts.com/
# 'Sauce Code Pro Nerd Font Complete.ttf'
POWERLEVEL9K_MODE='nerdfont-complete'

## left/right status segments
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir_writable dir vcs newline context)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs history time battery custom_charging_icon)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

## time config
POWERLEVEL9K_TIME_FORMAT="%D{%I:%M:%S %p}"

## git config (remove extra space from branch icon)
POWERLEVEL9K_VCS_BRANCH_ICON=$'\uF126'

## dir config
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='deepskyblue1'
POWERLEVEL9K_DIR_HOME_BACKGROUND='deepskyblue1'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='deepskyblue1'
POWERLEVEL9K_DIR_ETC_BACKGROUND='deepskyblue1'

## battery segment config
POWERLEVEL9K_BATTERY_VERBOSE=false
POWERLEVEL9K_BATTERY_STAGES=($'\uf244 ' $'\uf243 ' $'\uf243 ' $'\uf243 ' $'\uf242 ' $'\uf242 ' $'\uf242 ' $'\uf241 ' $'\uf241 ' $'\uf240 ')
POWERLEVEL9K_BATTERY_LEVEL_BACKGROUND=(red orangered1 darkorange orange1 gold1 yellow1 seagreen2 green3)
POWERLEVEL9K_BATTERY_LOW_FOREGROUND=white
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND=black
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND=black
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND=black

## custom "charging" icon if connected to AC power
zsh_charging_icon(){
  local charging='\uF588' ## from NerdFonts
  local charged='\uF584'
  if [[ $(pmset -g ps | grep charged) =~ "charged" ]]; then
    echo -n $charged
  elif [[ $(pmset -g ps | head -1) =~ "AC Power" ]]; then
    echo -n $charging
  fi
}
POWERLEVEL9K_CUSTOM_CHARGING_ICON_BACKGROUND="black"
POWERLEVEL9K_CUSTOM_CHARGING_ICON_FOREGROUND="red3"
POWERLEVEL9K_CUSTOM_CHARGING_ICON="zsh_charging_icon"

###############################################################################

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	mvn
	node
	npm
	nvm
	osx
	rsync
)

## syntax hilighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## run oh-my-zsh
source $ZSH/oh-my-zsh.sh

## use vim
export EDITOR=vim

# aliases
alias vi=vim

unalias ls
alias ls='ls --color=auto -CF'
alias ll='ls --color=auto -CFlh'

## EOF
