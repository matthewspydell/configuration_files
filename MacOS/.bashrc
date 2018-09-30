#   _______  _______ .__   __.  _______ .______           ___       __
#  /  _____||   ____||  \ |  | |   ____||   _  \         /   \     |  |
# |  |  __  |  |__   |   \|  | |  |__   |  |_)  |       /  ^  \    |  |
# |  | |_ | |   __|  |  . `  | |   __|  |      /       /  /_\  \   |  |
# |  |__| | |  |____ |  |\   | |  |____ |  |\  \----. /  _____  \  |  `----.
#  \______| |_______||__| \__| |_______|| _| `._____|/__/     \__\ |_______|
#

# COLOR CODES
# Attributes:	Text Color:		Background:
#	0 reset all		30 black		40 black
#	1 bright		31 red			41 red
#	2 dim			32 green		42 green
#	4 underscore	33 yellow		43 yellow
#	5 blink			34 blue			44 blue
#	7 reverse		35 purple		45 purple
#	8 hidden		36 cyan			46 cyan
#					37 white		47 white
# seperate with ';'
#

# modify prompt
# -----------------------------------------------------
export PS1="\u@\h: \w $ "
# export PS1="\e[0;35m$PS1\e[m"

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

# add color to terminal
# -----------------------------------------------------
# ls color
alias ls='ls -G'
# export CLICOLOR=1
# export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
# grep color
export GREP_COLOR="04;31"
alias grep='grep --color=auto -n'

# add auto-completion for git
# and modify prompt to include current branch
# -----------------------------------------------------
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
	. /usr/local/git/contrib/completion/git-completion.bash
	# if [ -f /usr/local/git/contrib/completion/git-prompt.sh ]; then
		# . /usr/local/git/contrib/completion/git-prompt.sh
		# PS1="\e[0;35m\u@ \w\e[m"
		# PS1="\u@ \w"
		# currentBranch='$(__git_ps1 " (on %s)")'
		# export PS1="$PS1$currentBranch $ "
	# fi
fi

# source bash_alias if it exists
# -----------------------------------------------------
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# setup agnoster bash theme
export THEME=$HOME/.bash/themes/agnoster-bash/agnoster.bash
if [[ -f $THEME ]]; then
    export DEFAULT_USER=`whoami`
    source $THEME
fi
