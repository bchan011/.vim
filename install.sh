!#/bin/sh

if [ ! -e $HOME/.vim/bundle/vundle ]; then
    git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
fi

vim +BundleInstall! +BundleClean +qall
