FancyPantsPS1
====
## Stylize your prompt.

<table>
  <tr>
    <td><font color="#808080">~/Development/fancypantsps1</font> <font color="#3090C7">master</font> <font color="#CCCC00" size="3">*</font></td>
    <td>You’re on branch master, and you have unstaged files.</td>
  </tr>
  <tr>
    <td><font color="#808080">~/Development/fancypantsps1</font> <font color="#3090C7">dfed/test</font> <font color="#DF0000" size="3">*</font></td>
    <td>You’re on branch dfed/test, and you have untracked files.</td>
  </tr>
  <tr>
    <td><font color="#808080">~/Development/fancypantsps1</font> <font color="#3090C7">dfed/test</font> <font color="#00AC00" size="3">↑</font></td>
    <td>You’re on branch dfed/test, and you’re branch is ahead of origin. Push!</td>
  </tr>
  <tr>
    <td><font color="#808080">~/Development/fancypantsps1</font> <font color="#3090C7">5e34182</font></td>
    <td>You’re in a detached head state at sha 5e34182.</td>
  </tr>
</table>  

#### Full git status feature breakdown
<table>
  <tr>
    <td><font color="#DF0000">red</font></td>
    <td><font color="#DF0000" size="5">*</font></td>
    <td>There are untracked files.</td>
  </tr>
  <tr>
    <td><font color="#CCCC00">yellow</font></td>
    <td><font color="#CCCC00" size="5">*</font></td>
    <td>There are unstaged files (no untracked).</td>
  </tr>
  <tr>
    <td><font color="#00AC00">green</font></td>
    <td><font color="#00AC00" size="5">*</font></td>
    <td>There are staged files (no untracked or unstaged). Ready to commit.</td>
  </tr>
  <tr>
    <td><font color="#DF0000">red</font></td>
    <td><font color="#DF0000" size="4">↕</font></td>
    <td>Branch has diverged.</td>
  </tr>
  <tr>
    <td><font color="#DF0000">red</font></td>
    <td><font color="#DF0000" size="4">↓</font></td>
    <td>There are new commits on the remote branch. You should pull!</td>
  </tr>
  <tr>
    <td><font color="#DF0000">red</font></td>
    <td><font color="#DF0000" size="4">↑</font></td>
    <td>There is a new commit on your branch that says "don't push", "work in progress", or some variation thereof.</td>
  </tr>
  <tr>
    <td><font color="#00AC00">green</font></td>
    <td><font color="#00AC00" size="4">↑</font></td>
    <td>You have new commits on your branch. Ready to push!</td>
  </tr>
</table>

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
