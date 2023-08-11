echo "installing fish..."
sudo apt install fish
echo "done."
echo "setting up fish as default shell..."
chsh -s /usr/bin/fish
echo "done."
echo "creating config directory..."
mkdir -p ~/.config/fish
echo "done."
echo "setting up your config fish file. You can modify this file to your liking."
echo "set -g -x fish_greeting ''" > ~/.config/fish/config.fish
echo "All set! Make sure to reboot in order for changes to take effect."