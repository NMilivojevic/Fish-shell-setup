if [[ "$OSTYPE" == "linux-gnu"* ]]; then
     echo "Linux OS."
     echo "installing fish..."
     sudo apt install fish
     echo "setting up fish as default shell..."
     chsh -s /usr/bin/fish
     echo "creating config directory..."
     mkdir -p ~/.config/fish
     echo "setting up your config fish file. You can modify this file to your liking."
     echo "set -g -x fish_greeting ''" > ~/.config/fish/config.fish
     echo "All set! Make sure to log out and log back in or reboot in order for changes to take effect."
elif [[ "$OSTYPE" == "darwin"* ]]; then
     echo "Mac OS."
     echo "installing homebrew..."
     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"     
     echo "installing fish..."
     brew install fish
     echo "adding fish shell..."
     echo /usr/local/bin/fish | sudo tee -a /etc/shells
     echo "setting up fish as default shell..."
     chsh -s /usr/local/bin/fish
     echo "creating config directory..."
     mkdir -p ~/.config/fish
     echo "setting up your config fish file. You can modify this file to your liking."
     echo "set -g -x fish_greeting ''" > ~/.config/fish/config.fish
     echo "All set! Make sure to log out and log back in or reboot in order for changes to take effect."
fi