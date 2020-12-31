#!  /usr/bin/bash
#----------------------------------------------------------
#   Name: setting.sh
#   Author: xyy15926
#   Created at: 2018-08-18 18:29:34
#   Updated at: 2020-11-03 19:36:06
#   Description: 
#----------------------------------------------------------

set -x
export HOME_CNF=$HOME/Code/proxy/home_config

# vim settings
ln -sf "$HOME_CNF/vim." $HOME/.vim
mkdir $HOME/.vim/tmp


# git settings
if [ ! -d $HOME/.config/git ]; then
	mkdir -r $HOME/.config/git
fi
ln -sf "$HOME_CNF" $HOME/.config/git/config


# ctags
ln -sf "$HOME_CNF/ctags/ctags" $HOME/.ctags


# conda and pip
ln -sf "$HOME_CNF/conda/condarc" $HOME/.condarc
if [ ! -d $HOME/.config/pip ]; then
	mkdir -r $HOME/.config/pip
fi
ln -sf "$HOME_CNF/config/pip/pip.conf" $HOME/config/pip/pip.conf


# bash and profile setting
if [ -f $HOME/.bash_profile ]; then
	PROFILE=$HOME/.bash_profile
else
	PROFILE=$HOME/.profile
fi
echo "" >> $PROFILE
echo "# launch personal setting" >> $PROFILE
echo "if [-f $HOME_CNF/bash_profile_addon]; then" >> $PROFILE
echo -e "\t. $HOME_CNF/bash_profile_addon" >> $PROFILE
echo "fi" >> $PROFILE

if [ -f $HOME/.bashrc ]; then
	RC=$HOME/.bashrc
else
	RC=$HOME/.bashrc
fi
echo "" >> $RC
echo "# launch personal setting" >> $RC
echo "if [ -f $HOME_CNF/bash_addon ]; then" >> $RC
echo -e "\t. $HOME_CNF/bash_addon" >> $RC
echo "fi" >> $RC


# ssh setting
if [ ! -d $HOME/.ssh]; then
	mkdir -r $HOME/.ssh
fi
ln -s $HOME_CNF/ssh/config $HOME/.ssh/config
# add rsa private and public key pair
if [ ! -f $HOME/.ssh/id_rsa ]; then
	ssh-keygen -t rsa -b 4096 -C xyy15926@163.com
	cat $HOME/.ssh/id_rsa.pub
fi


# tmux setting
ln -sf $HOME_CNF/tmux/tmux.conf $HOME/.tmux.conf


# fonts setting
if [ ! -d $HOME/.local/share/fonts ]; then
	mkdir -r $HOME/.local/share/fonts
fi
cp $HOME_CNF/fonts/WenQuanYiMicroHei-01.ttf $HOME/.local/share/fonts
cp $HOME_CNF/fonts/WenQuanYiMicroHeiMono-02.ttf $HOME/.local/share/fonts
fc-cache


# DOWNLOAD



