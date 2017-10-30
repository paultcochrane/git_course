# Git Course

## What is version control?  What is it good for?

 - motivation for version control
   - safety net
   - "time machine"
 - version control history (can be skipped)
 - git history (can be skipped)
 - explanation of some terms
   - repository, origin, upstream, commit, branch
 - local repo model
 - distributed repository model
 - centralised repository model

## Installing Git

 - prerequisites
   - Linux/MacOS/Windows
   - command line (bash, GitBash on Windows)
     - "learn to use the shell and you will see your productivity soar":
       The Pragmatic Programmer
   - graphical git tools (SourceTree)
   - text editors

## Getting help

 - git help
 - man pages
 - online resources
 - books

## Local Git

### First repos and commit

 - the first repository
 - git init .
 - git status
 - git add  (tracking *and* staging files)
 - git commit -a
 - note git status at each step so flow of changes is clearer
 - git config
   - setting user data
   - user.name, user.email (important -> explain why?)
   - git config --list


 - git status
 - ignoring files

 - commits build upon one another
 - staging files
 - photograph analogy with git add/git commit
   - staged/indexed/cached -> committed
 - snapshots of repo state, not diffs

 - normal workflow

 - recommendations for commits and commit messages

 - git commit -p
 - git add -p

 - staging/unstaging
   - concepts
   - git reset

 - working dir / staging area / repo (local) / remote repo (upstream,
   origin, etc.)

 - git rm
 - git log; git log --graph
 - git show
 - git diff; git diff <>...<>; git diff <>..<>; git diff <>~n; git diff <>^n
 - tig
 - explain SHAs

 - git mv  (renaming, moving files)
 - git config alias

 - git commit --amend

 - GitHub/BitBucket
 - SSH

 - import existing project/creating a project from scratch

### Remote Git

 - working with others
   - author, committer can be different people (usually aren't)

 - cloning someone else's project
 - git clone
 - branches
 - git branch
   - git branch -d
   - these are just tags pointing to a given commit
   - HEAD, master, upstream, origin, <branchname>
   - point to SHA1 hashes (quick explanation of SHA1 hashes)
 - git checkout <file/branch>
 - git remote add origin <reponame>
 - git remote add upstream <reponame>
 - git merge <branchname>
 - git fetch upstream master
   - origin/master points to last fetched commit from origin at master branch
 - git merge upstream/master
 - git pull (--rebase)
 - resolving conflicts
 - git push   (publishing!)
 - git push --upstream <alias> <branch>
 - git push/pull --tags
 - git cherry-pick

 - distributed workflows
   - centralised
   - integration manager
   - dictator/lieutenants
   - public project; fork model; like GitHub, BitBucket, GitLab

 - pull requests on GitHub/BitBucket

 - git tag
   - git tag -d
   - need examples and exercises

## Extra topics

 - git stash
 - git stash show -p
 - git stash pop; git stash drop; git stash drop/show {n}
 - changing branches and git stash
 - conflicts after git stash pop
 - git bisect
 - splitting a commit

 - git rebase -i (rewriting history)
 - git rebase <branchname>   # "plain" rebase
   - reorder, edit, squash, reword, delete

 - `git subtree` (used to be a complex `git filter-branch` operation)

 - `git log -S'<search text>'`  (pickaxe; search through diffs for a search string)
 - `git log -L 'start_line,stop_line'`
 - `git log -L 'start_line,+-offset'`
 - from the `git log` man page:
git log -L '/int main/',/^}/:main.c
Shows how the function main() in the file main.c evolved over time.

 - discuss submodules??
 - merge tools, e.g. meld
 - git svn (only if really necessary)
