#this file will be source by the alias with input param for title shell
tit=$1
#output:
if [[ `whoami` == root ]]
then
	PS1="($SPACE)\[$txtblu\]\[\e]0;$tit\a\]\[$txtred\]${debian_chroot:+($debian_chroot)}\u@\[$txtblu\]\h:\w\$\[$txtrst\] "
else
	PS1="($SPACE)\[$txtblu\]\[\e]0;$tit\a\]\[$txtylw\]${debian_chroot:+($debian_chroot)}\u@\[$txtblu\]\h:\w\$\[$txtrst\] "
fi
