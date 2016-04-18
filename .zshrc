#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

alias ll="ls -lAh"
alias wgeto="wget -O"
alias rsynco="rsync -azvh --progress"
alias tarball="tar -cvzf"

# SSH aliases
# UVic with reverse specified for use with sublime and rsync
alias sshseng="ssh -R 52698:localhost:52698 jonah@shell.seng.uvic.ca" 
alias sshcsc="ssh -R 52698:localhost:52698 jonah@linux.csc.uvic.ca"
# raspberry pi
alias sshrasp="ssh pi@192.168.0.114"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

source ~/.fasd-init


function mountnas (){
if [ $# -eq 1 ]; then
    mkdir /Volumes/$1
    mount_smbfs //guest@nas/$1 /Volumes/$1
    return 0
fi
echo "mount: [Backups, Music, Movies, Documents]"
}

# Additional execution paths
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH

export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=~/Code
#source /usr/local/bin/virtualenvwrapper.sh

export EDITOR=vim
