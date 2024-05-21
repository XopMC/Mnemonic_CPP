#!/bin/bash


if ! command -v brew &>/dev/null
then
    echo "Установка Homebrew..."

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    echo "Homebrew already installed."
fi

echo "Update Homebrew..."
brew update

echo "Install OpenSSL..."
brew install openssl@3

echo "Install done."

