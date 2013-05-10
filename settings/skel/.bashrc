[ -z "$PS1" ] && return
shopt -s checkwinsize

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
fi

if [ "$color_prompt" = yes ]; then
	PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
	PS1='\u@\h:\w\$ '
fi
unset color_prompt

if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
fi

#Do compression with all cores !!
#alias gzip='pigz'
#alias gunzip='unpigz'
#alias bzip2='pbzip2'
#alias bunzip2='pbunzip2'
#alias bzcat='pbzcat'
#alias xz='pxz'

function gzip(){
 pigz $@
}
export -f gzip

function gunzip(){
 unpigz $@
}
export -f gunzip

function bzip2(){
 pbzip2 $@
}
export -f bzip2

function bunzip2(){
 pbunzip2 $@
}
export -f bunzip2

function bzcat(){
 pbzcat $@
}
export -f bzcat

function xz(){
 pxz $@
}
export -f xz
