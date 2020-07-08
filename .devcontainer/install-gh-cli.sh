#!/bin/bash

# this is a temporary workaround until GitHub publishes the `gh` CLI to debian/ubuntu repos
# there's an open issue tracking that here: https://github.com/cli/cli/issues/448

set -eu
LATEST_RELEASE=$(curl -s https://api.github.com/repos/cli/cli/releases/latest)
VERSION=$(echo $LATEST_RELEASE | jq -r '.tag_name')
DEB_URL=$(echo $LATEST_RELEASE | jq -r '.assets[].browser_download_url | select(. | contains("linux_amd64.deb"))')

wget --quiet -O gh_latest.deb $DEB_URL
sudo dpkg -i gh_latest.deb
rm gh_latest.deb
gh --version
