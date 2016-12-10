FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
   build-essential \
   check \
   git \
   man-db \
   vim \
   valgrind \
   pkg-config

RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

RUN git clone https://github.com/ztbrown/dotfiles.git && \
    cd /dotfiles && \
    ln -s $PWD/.vimrc ~/.vimrc 

CMD ["/bin/bash"]
