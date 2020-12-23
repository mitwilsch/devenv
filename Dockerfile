FROM alpine:latest

WORKDIR /root

RUN apk update
RUN apk add vim wget zsh git

# install custom zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh 
RUN sh install.sh --unattended

# install custom zsh
RUN git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime 
RUN sh ~/.vim_runtime/install_awesome_vimrc.sh

CMD ["zsh"]

