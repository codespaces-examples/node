FROM ubuntu:18.04

WORKDIR /home/

COPY . .

RUN bash ./setup.sh                                                                            \
    echo -e 'export NVM_DIR="$HOME/.nvm"\n'                                  >> "$HOME/.zshrc" \
    echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm' >> "$HOME/.zshrc"
