# shell

* use tit for title bar

## source main aliases

```
<user>/.bashrc
===============
...
......

source <...>/solov.bashrc bash

```

## main alias file

```
myShell=$1


...
......

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



```