# gitfix

to avoid "where was I..." and 20 stash entries later...

### Quick quick
`gitfix develop` Quickly save your working branch and change to develop, while remembering your branch.   
`gitfix branch`  Quickly return to your last branch and restore your changes.

### How?
gitfix develop will basically autocommit your changes and reset this commit when restoring. All files will be in staged state.   
Last branch name is stored in a file called lastbranch.bak

### TODO
- store lastbranch in a better place (outside of the git repository)
- `gitfix hotfix <name>`  for directly switch to a new hotfix branch according to [git flow](https://danielkummer.github.io/git-flow-cheatsheet/)
