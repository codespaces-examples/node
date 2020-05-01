FROM ubuntu:18.04

WORKDIR /home/

COPY . .

RUN bash ./setup.sh

RUN echo 'export NVM_DIR="$HOME/.nvm"'                                  >> "$HOME/.zshrc" \
    echo -e '\n' >> "$HOME/.zshrc" \
    echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm' >> "$HOME/.zshrc"
