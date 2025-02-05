# HAN LE dotfiles

### General syntax:

#### Git operation
```bash
dotfiles config ...
dotfiles remote ...
```

#### Adding conf file
```bash
dotfiles add .tmux.conf
dotfiles commit -m "Add .tmux.conf"
dotfiles push
```

### First Time setup

#### Creating repo location
```bash
mkdir $HOME/.dotfiles
git init --bare $HOME/.dotfiles
```

#### Creating allias in .bashrc or .zshrc
```bash
alias dotfiles='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME // or /urs/bin/git ...
```

#### Hide Untracked files
```bash
dotfiles config --local status.showUntrackedFiles no
dotfiles remote add origin git@github.com:anandpiyer/.dotfiles.git
```



## Setting Up New Machine
```bash
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/hanle23/.dotfiles
```

## If there's already dotfiles existed
```bash
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/hanle23/.dotfiles tmpdotfiles
rsync --recursive --verbose --exclude '.git' /tmpdotfiles/ $HOME/
rm -r tmpdotfiles
```
