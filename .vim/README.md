# Sync vim config

- [vimcasts.org | Synchronizing plugins with git submodules and pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)

## create initial config
1. add submodule as git project
```
mkdir .vim
git init
git submodule add https://github.com/VundleVim/Vundle.vim.git bundle/Vundle.vim
git submodule add https://github.com/mileszs/ack.vim.git bundle/ack.vim
git submodule add https://github.com/jiangmiao/auto-pairs.git bundle/auto-pairs
git submodule add https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim
git submodule add https://github.com/scrooloose/nerdcommenter.git bundle/nerdcommenter
git submodule add https://github.com/scrooloose/nerdtree.git bundle/nerdtree
git submodule add https://github.com/ervandew/supertab.git bundle/supertab
git submodule add https://github.com/godlygeek/tabular.git bundle/tabular
git submodule add https://github.com/majutsushi/tagbar.git bundle/tagbar
git submodule add https://github.com/vim-airline/vim-airline.git bundle/vim-airline
git submodule add https://github.com/flazz/vim-colorschemes.git bundle/vim-colorschemes
git submodule add https://github.com/plasticboy/vim-markdown.git bundle/vim-markdown
git submodule add https://github.com/tpope/vim-rails.git bundle/vim-rails
touch README.md
cp ~/.vimrc vimrc
```

2. move config file to `.vim`
```
mv .vimrc ~/.vim/vimrc
mv .gvimrc ~/.vim/gvimrc
```

## sync on another machine

1. clone project
```
cd ~
git clone http://github.com/username/dotvim.git ~/.vim
```

2. create symblic link to vimrc
```shell
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
```

3. sync plugins
```
cd ~/.vim
git submodule init
git submodule update
```

4. intall in Vundle, lanch vim, and `:PluginInstall`

