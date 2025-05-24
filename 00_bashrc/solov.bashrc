#!/bin/bash
myShell=$1

#################################################################
#######################  varibels ###############################
sys="/data/sysadmin"
SYSADMIN=$sys
bashRoot="$sys/00_bashrc"
bashScripts="$sys/01_scripts"
bashColor="$bashRoot/bashrc_colors"
bashSolov="$bashRoot/solov.bashrc"
helpRoot="$sys/02_help"

#################################################################
#######################  folders  ###############################
data="/data"
proj="/proj"
myGits="/data/myGits"
gitRoot="$myGits"
ubu="$sys/ubu24"
tools="$sys/local"

#################################################################
#######################  projects ###############################



#################################################################
#######################  PATH  ##################################
PATH=$PATH:$HOME/.vim/plugin
export EDITOR='vim'

#################################################################
######################## general ################################
alias 88="ping 8.8.8.8"
alias space='df -h |head -1 ; df -h | head -4 | tail -1 ;df -h | grep data'
alias realias='source $bashSolov'
alias rr=realias
alias vialias='sudo vi $bashSolov ; realias'
alias vimrc='vi ~/.vimrc'
alias mkcd="mkdir $1 \; cd $1 "
alias hyber='pm-hibernate'
alias ee=eog
alias ss="sleep 1 ; xset -display :0 dpms force off"



#################################################################
#######################  system  ################################
alias sys='cc ; cd $sys ; tit "sysadmin" '


#################################################################
#######################  console  ###############################
alias cc='clear -x'
alias xx='exit'

#################################################################
######################## consoles  ##############################



#################################################################
######################## myScripts  #############################



#################################################################
######################## clipboard  #############################
function clip2file() { echo saveImgTo=./$1.png ; xclip -selection clipboard -t image/png -o > $1.png ;}
alias c2f=clip2file


#################################################################
######################## tops  ##################################
alias topmem=' free -h ;echo " "  ;ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head'
alias mm=topmem
## for 5 sec
alias topCpu="timeout 5 top -b -d 1 -c | awk '\$1 ~ /^[0-9]+$/ && \$9>70 {print \"Process ID: \" \$1, \"CPU Usage: \" \$9 \"%\", \"Command: \" substr(\$0, index(\$0,\$12))}'"

#################################################################
######################## PS1 ####################################
PS1CLEAN=$PS1
SPACE=main
if [[ $myShell == "bash" ]] ; then
	#colorize
	source $bashColor
	if [ `whoami` == root ]
	then
	PS1="($SPACE)\[$txtblu\]\[\e]0;$tit\a\]\[$txtred\]${debian_chroot:+($debian_chroot)}\u@\[$txtblu\]\h:\w\$\[$txtrst\] "
	else
	PS1="($SPACE)\[$txtblu\]\[\e]0;$tit\a\]\[$txtylw\]${debian_chroot:+($debian_chroot)}\u@\[$txtblu\]\h:\w\$\[$txtrst\] "
	fi
	alias ps1sht='export PROMPT_DIRTRIM=1'
	alias ps1wht='PS1="\[$txtwht\]\[\e]0;\u@\h: \w\a\]\[$txtwht\]${debian_chroot:+($debian_chroot)}\u@\[$txtwht\]\h:\w\$\[$txtrst\] "'
  alias tit='source $bashScripts/shell/tit.sh $1'
fi

if [[ $myShell == "zsh" ]] ; then
# In ZSH, you need to create an alias using a function to support parameters.
function tit() { source $bashScripts/shell/titZSH.sh $1 ;}
PS1="($SPACE)$PS1CLEAN"
fi


#################################################################
######################## help    ################################
alias h='cc; cat $helpRoot/welcome'
alias hh='cc; cd $helpRoot ; ls '
alias a='cc ; if [ -f ./readme.md ]; then cat ./readme.md ; else cat ./README.md ; fi '
alias aa='vi ./readme.md ; cc ; cat ./readme.md '







#################################################################
######################## SERVICES ###############################





#################################################################
######################## REGOLITH ###############################
## rename shell
function i3-name() { $ubu/02_i3Reg/scripts/wrsp_changeCurName.sh $1 ; }
alias name="i3-name"


#################################################################
######################## /proj    ###############################
#################################################################




#################################################################
############### kernel   ########################################
#################################################################



#################################################################
#################### HW  ########################################
alias mini0='minicom -wD /dev/ttyUSB0'
alias mini1='minicom -wD /dev/ttyUSB1'


#################################################################
#################### wifi #######################################





#################################################################
############### local programs  #################################
#################################################################




#################################################################
###############   GIT    ########################################
#################################################################



