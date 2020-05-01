FROM ubuntu:18.04

WORKDIR /home/

COPY . .

RUN bash ./setup.sh

RUN echo 'export NVM_DIR="$HOME/.nvm"'
RUN echo '\n'
RUN echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm' >> "$HOME/.zshrc"
