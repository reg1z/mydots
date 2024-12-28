#!/bin/bash
repo="https://github.com/NvChad/starter"
cmd="git clone $repo ~/.config/nvim"
rmDotGitCmd="rm -rf ~/.config/nvim/.git"

echo "NvChad repo: $repo"
eval $cmd
echo " "
echo "Success!"
echo " "
sleep 2s
echo "Launch nvim and run ':MasonInstallAll' to finish NvChad installation,"
echo "then run '$rmDotGitCmd' to delete the .git folder."
echo " "
echo "To update, run ':Lazy sync'"
