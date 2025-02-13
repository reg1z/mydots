#!/bin/bash

echo "WARNING: The entire nvim config and associated files will be destroyed!"
echo "You have 3 seconds to cancel this operation ..."
sleep 3s
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.cache/nvim ~/.local/state/nvim

