Installation and Light Weight Configuration for (MacVim)
========

Installation
--------------------
1. 下载MacVim: https://code.google.com/p/macvim/, 解压: 将MacVim.app拖入到/Applications目录下。输入":h mvim", 按照提示将mvim脚本文件拷贝到"/usr/local/bin"目录下。

2. 打开终端, 输入"cd $HOME", 然后"touch .bashrc"创建文件。打开文件, 输入"alias vim=mvim", 保存别名变量。最后在终端输入"source .bashrc" 这样在终端输入vim和mvim都可以启动MacVim.app了。

   Configuration
--------------------
配置 ~/.vimrc 和 ~/.gvimrc
1. 在MacVim编辑器重输入":version", 将看到MacVim的一些配置信息
  a. $VIM系统变量的路径为: "/Applications/MacVim.app/Contents/Resources/vim", MacVim的系统变量路径: "$VIM/vimrc"
  b. 用户配置文件.vimrc的路径为: "$HOME/.vimrc" (默认不存在, 如果需要则需要在终端输入"touch $HOME/.vimrc"来创建)
  c. 以此类推 "$VIM/gvimrc", "$HOME/.gvimrc"
  d. MacVim的菜单文件路径: "$VIMRUNTIME/mene.vim"
  e. 另外解释下, $HOME为当前用户目录的路径, $VIMRUNTIME路径为"/Applications/MacVim.app/Contents/Resources/vim"。可以在MacVim中输入":echo $VIMRUNTIME"来查看这些系统变量的路径。
2. 将.vimrc拷贝到$HOME中, 即"$HOME/.vimrc"。



