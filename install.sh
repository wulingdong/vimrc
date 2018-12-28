#########################################################################
# File Name: install.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: 2018年12月21日 星期五 15时22分32秒
#########################################################################
#!/bin/bash
cur_dir=`pwd`
unlink ~/.vimrc
unlink ~/.vim

ln -s $cur_dir/vimrc ~/.vimrc
ln -s $cur_dir ~/.vim

if [ ! -d $cur_dir/bundle  ];then
	mkdir $cur_dir/bundle
	mkdir $cur_dir/bundle/Vundle.vim
    git clone https://github.com/VundleVim/Vundle.vim.git $cur_dir/bundle/Vundle.vim
fi 
