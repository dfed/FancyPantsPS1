FancyPantsPS1
====
## Stylize your prompt.

| Prompt | Description |
| --- | --- |
| $$\color{gray}\textasciitilde/Development/fancypantsps1~~\color{blue}master~~\color{yellow}\text{*}$$ | You’re on branch master, and you have unstaged files. |
| $$\color{gray}\textasciitilde/Development/fancypantsps1~~\color{blue}dfed/test~~\color{red}\text{*}$$ | You’re on branch dfed/test, and you have untracked files. |
| $$\color{gray}\textasciitilde/Development/fancypantsps1~~\color{blue}dfed/test~~\color{green}\text{↑}$$ | You’re on branch dfed/test, and your branch is ahead of origin. Push! |
| $$\color{gray}\textasciitilde/Development/fancypantsps1~~\color{blue}5e34182$$ | You’re in a detached head state at sha 5e34182. |

## Full git status feature breakdown

| Color | Symbol | Description |
| --- | --- | --- |
| $$\color{red}red$$ | `$$\color{red}\text{*}$$` | There are untracked files. |
| $$\color{yellow}yellow$$ | $$\color{yellow}\text{*}$$ | There are unstaged files (no untracked). |
| $$\color{green}green$$ | $$\color{green}\text{*}$$ | There are staged files (no untracked or unstaged). Ready to commit. |
| $$\color{red}red$$ | $$\color{red}\text{↕}$$ | Branch has diverged. |
| $$\color{red}red$$ | $$\color{red}\text{↓}$$ | There are new commits on the remote branch. You should pull! |
| $$\color{red}red$$ | $$\color{red}\text{↑}$$ | There is a new commit on your branch that says "don't push", "work in progress", or some variation thereof. |
| $$\color{green}green$$ | $$\color{green}\text{↑}$$ | You have new commits on your branch. Ready to push! |


## Installation instructions
### Bash
#### Run the following to install:
```bash
git clone git@github.com:dfed/FancyPantsPS1.git
cd fancypantsps1
. ./install.sh
```
#### Or add the following into your ~/.bash_profile:
```bash
 source <path_to_fancypants>/fancypants_sharedrc && source <path_to_fancypants>/fancypants_ps1_bashrc
 export GIT_GEMS_PS1_SHOWUNTRACKEDFILES=true #set to false to speed up your prompt when in large repos
```
### Zsh
#### Run the following to install:
```zsh
git clone git@github.com:dfed/FancyPantsPS1.git
cd fancypantsps1
. ./zsh_install.sh
```
#### Or add the following into your ~/Development/config_files/zsh/prompt.zsh:
```zsh
source <path_to_fancypants>/fancypants_sharedrc && source <path_to_fancypants>/fancypants_ps1_zshprompt
export GIT_GEMS_PS1_SHOWUNTRACKEDFILES=true #set to false to speed up your prompt when in large repos
```
