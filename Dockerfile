FROM alpine:latest

WORKDIR /root

RUN apk update
RUN apk add vim wget zsh git npm

# install custom zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh 
RUN sh install.sh --unattended

# install custom zsh
RUN git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime 
RUN sh ~/.vim_runtime/install_awesome_vimrc.sh

# copy configs
#COPY ./zshrc ./.zshrc
COPY ./my_configs.vim ./.vim_runtime/
RUN npm i -g prettier eslint

CMD ["zsh"]

