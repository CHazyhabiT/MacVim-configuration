Installation and Configurating with Janus for (MacVim)
========

Installation
--------------------
1. 下载MacVim: https://code.google.com/p/macvim/, 解压: 将MacVim.app拖入到/Applications目录下。输入":h mvim", 按照提示将mvim脚本文件拷贝到"/usr/local/bin"目录下。
2. 打开终端, 输入"cd $HOME", 然后"touch .bashrc"创建文件。打开文件, 输入"alias vim=mvim", 保存别名变量。最后在终端输入"source .bashrc" 这样在终端输入vim和mvim都可以启动MacVim.app了。
3. 安装Janus,在终端输入如下语句 (详见https://github.com/carlhuda/janus)

  "curl -Lo- http://bit.ly/janus-bootstrap | bash", which backs up any Vim files found in your home folder and install Janus.

Configuration Customization
--------------------
配置 ~/.vimrc 和 ~/.gvimrc

1. 在MacVim编辑器重输入":version", 将看到MacVim的一些配置信息。

  a. $VIM系统变量的路径为: "/Applications/MacVim.app/Contents/Resources/vim", MacVim的系统变量路径: "$VIM/vimrc"

  b. 用户配置文件.vimrc的路径为: "$HOME/.vimrc" (这里在装Janus时已经产生, 如果需要则需要在终端输入"touch $HOME/.vimrc"来创建)
  
  c. 以此类推 "$VIM/gvimrc", "$HOME/.gvimrc"
  
  d. MacVim的菜单文件路径: "$VIMRUNTIME/mene.vim"
  
  e. 另外解释下, $HOME为当前用户目录的路径, $VIMRUNTIME路径为"/Applications/MacVim.app/Contents/Resources/vim"。可以在MacVim中输入":echo $VIMRUNTIME"来查看这些系统变量的路径。

2. Light Weight Customization

  找到用户配置的文件"mvim $HOME/.vimrc", 然后在"source ~/.vimrc.before"之后, "exe 'source ' . g:janus_vim_path . '/core/plugins vim'"之前添加自己的一些个性化配置，比如设置字体，高亮。。。(范例见.vimrc)

3. 添加其他plugin

  a. 如果想添加其他的Vim plugins, 在终端输入"mkdir ~/.janus"创建文件夹。
  
  b. 移到该文件夹"cd ~/.janus", "git init"设该文件夹为git repository。
  
  c. 然后找到相应的plugin,比如auto-pairs(自动补齐成对括号 https://github.com/jiangmiao/auto-pairs)
  
    输入"git clone https://github.com/jiangmiao/auto-pairs.git auto-pairs"
    
    或者"git submodule add https://github.com/jiangmiao/auto-pairs.git auto-pairs"
    
    最后一个参数是plugin存放在的本地文件夹(理论上自己命名), 不过为了统一, 直接与前面的git一致。

4. 推荐plugin

  a. auto-pairs https://github.com/jiangmiao/auto-pairs
  
  b. emmet-vim https://github.com/mattn/emmet-vim for HTML CSS
