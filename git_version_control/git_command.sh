#!/bin/bash



# 1) check commit histroy

git log 
git log --oneline
git reflog


# 2) merge 

# git branch 
# * master 
# * dev 

git checkout master  # go to master branch 
git merge dev  # dev to master 



# 3) revert to pervious commit 


# git log --oneline 
# 7381170 start develop python code query/collect spotify recommend data
# d176073 add shell query spotify ad demo
# 7f7149a Update README.md
# ef3895b Create README.md



git reset SHA-1 — hard # git reset ef3895b — hard  # in this example









