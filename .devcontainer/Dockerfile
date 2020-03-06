FROM ubuntu:latest

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

# Update apt
RUN apt-get update
RUN apt-get install

# Install external dependencies
RUN apt-get -y install --no-install-recommends \
    git \
    openssh-client \
    less \
    iproute2 \
    procps \
    curl \
    wget \
    unzip \
    lsb-release \
    ca-certificates \
    apt-transport-https \
    libc6 \
    libgcc1 \
    libssl1.1 \
    libstdc++6 \
    zlib1g \
    gnupg \
    zsh

# Set up registry for yarn and install it
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get install yarn -y --no-install-recommends

# Set up zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
RUN cp -R /root/.oh-my-zsh /home/$USERNAME
RUN cp /root/.zshrc /home/$USERNAME
RUN sed -i -e "s/\/root\/.oh-my-zsh/\/home\/$USERNAME\/.oh-my-zsh/g" /home/$USERNAME/.zshrc
RUN chown -R $USER_UID:$USER_GID /home/$USERNAME/.oh-my-zsh /home/$USERNAME/.zshrc

# Fetch nvm source
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog