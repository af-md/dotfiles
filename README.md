# dotfiles

Dotfiles contains:
- 

## chezmoi on local update dotfiles
start with:
git diff

For specific files you saw in diff:
chezmoi add ~/.zshrc ~/.config/app/config.yml

Or to add all changed files at once:
chezmoi re-add
 
Go to your chezmoi source directory
cd $(chezmoi source-path)

Check the staged changes
git status

Commit the changes
git add .
git commit -m "Update dotfiles with recent system changes"

Push to remote repository (if you're using one)
git push
