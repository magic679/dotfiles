
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias restart='sudo systemctl reboot'
alias reboot='sudo systemctl reboot'
alias poweroff='sudo systemctl poweroff'
alias shutdown='sudo systemctl poweroff'
alias sleep='sudo systemctl suspend'

alias ls='ls --color=auto'
alias ll='ls -al --color=auto'
alias xbash='. ~/.bashrc'

#programs
alias sub='/opt/sublime-text/sublime_text'
alias as='sh /usr/local/bin/android-studio/bin/studio.sh'

#navigation
alias root='cd /'
alias home='cd ~'
alias code='cd ~/Code'
alias db='cd ~/Dropbox'
alias downloads='cd ~/Downloads'

# personalization
PS1='--> \w :'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

function ethernet(){
	if [ $# -eq 0 ]
	then
		echo "Please provide a command (start, stop)"
	elif [ $1 = "start" ]
	then
		systemctl start dhcpcd@enp0s20f0u1.service
	elif [ $1 = "stop" ]
	then
		systemctl stop dhcpcd@enp0s20f0u1.service
	fi
}

function wifi(){
	if [ $# -eq 0 ]
	then
		echo "Please provide a command (start, stop)"
	elif [ $1 = "start" ]
	then
		systemctl start dhcpcd@wlp2s0.service
	elif [ $1 = "stop" ]
	then
		systemctl stop dhcpcd@wlp2s0.service
	fi
}

function setjdk(){
	if [ $# -eq 0 ]
	then
		archlinux-java status
	elif [ $1 = "7" ]
	then
		sudo archlinux-java set java-7-openjdk
	elif [ $1 = "8" ]
	then
		sudo archlinux-java set java-8-openjdk
	fi
}
