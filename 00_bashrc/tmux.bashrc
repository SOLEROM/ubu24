################### tmux alias ########################
alias t.conf='vi /etc/tmux.conf'
alias t.help='less /data/sysadmin/help/h.tmux'
alias t.keys='eog  --fullscreen /data/solov/myKeyLayout/tmux.png'
alias t.attach='tmux attach -t $1'
alias t.slist='	echo "tmux session list:"
		echo "======================================"
		tmux list-sessions;
		echo "======================================"
	     	echo "...use to attach:   tmux attach -t <!!!> " '

alias t.source='tmux source /etc/tmux.conf'
### run the tpm (profix+I) 
alias t.install='~/.tmux/plugins/tpm/scripts/install_plugins.sh'
alias t.kill='tmux kill-session -t $1'

### work with tmuxinatior
#https://github.com/tmuxinator/tmuxinator
alias t.new='tmuxinator new $1'
alias t.home='cd ~/.tmuxinator/'
alias t.run='mux $1'
alias t.list='tmuxinator list'
alias t.rm='tmuxinator delete'


############ tmux shells ##############
alias _sys='t.run sys'


