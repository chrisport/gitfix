# gitfix

to avoid "where was I..." and 20 stash entries later...

### Quick quick
`gitfix develop` Quickly save your working branch and change to develop, while remembering your branch.   
`gitfix branch`  Quickly return to your last branch and restore your changes.


### Install

You can easily install with the following command:
```
sudo curl -L https://github.com/chrisport/gitfix/releases/download/v0.1/gitfix > /usr/local/bin/gitfix; chmod +x /usr/local/bin/gitfix
```
The script will be downloaded and moved to your /usr/local/bin folder

### How?
gitfix develop will basically autocommit your changes and reset this commit when restoring. All files will be in staged state.   
Last branch name is stored in a file called lastbranch.bak

### TODO
- ~~store lastbranch in a better place (outside of the git repository)~~
- not useful, therefore left out: ~~`gitfix hotfix <name>`  for directly switch to a new hotfix branch according to [git flow](https://danielkummer.github.io/git-flow-cheatsheet/)~~

### Contribute
Feel free to contribute and open merge request, please shortly describe the purpose of change (if not obvious). 
Feel free to open issue for suggestions.
