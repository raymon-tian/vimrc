if [ ! -d ~/.vim ]; then
      mkdir ~/.vim
fi

if [ ! -d ~/.vim/bundle ]; then
    mkdir ~/.vim/bundle
fi

if [ ! -d ~/.vim/colors ]; then
    mkdir ~/.vim/colors
fi

p=$(pwd)

p1=${p}"/.vimrc"
ln -s $p1 ~/.vimrc

p2=${p}"/colors"
cp -r $p2 ~/.vim

vim +PluginInstall +qall
