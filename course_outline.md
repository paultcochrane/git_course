# Git Course

 - motivation for version control
   - safety net
   - "time machine"
 - version control history (can be skipped)
 - git history (can be skipped)

 - prerequisites
   - Linux/MacOS/Windows
     - command line (bash, GitBash on Windows)
       - "learn to use the shell and you will see your productivity soar":
         The Pragmatic Programmer
     - graphical git tools (SourceTree)
     - text editors

 - explanation of some terms
   - repository, origin, upstream, commit, branch

 - the first repository
 - git init .
 - git add
 - git commit -a
 - git config
   - setting user data

 - import existing project/creating a project from scratch
 - cloning someone else's project (later)

 - git config
   - setting user data

 - git status
 - ignoring files

 - commits build upon one another

 - normal workflow

 - weaning yourself from git commit -a
 - staging files
 - photograph analogy with git add/git commit
   - staged/indexed/cached -> committed
 - getting help
   - man pages
   - online resources
   - books

 - recommendations for commits and commit messages

 - git commit -p
 - git add -p
 - git commit --amend

 - git log
 - git show
 - git diff
 - tig

 - git config alias

 - git mv  (renaming, moving files)

 - GitHub/BitBucket
 - SSH

 - working with others
   - author, committer can be different people (usually aren't)
 - resolving conflicts

 - git clone
 - branches
 - git branch
   - git branch -d
   - these are just tags pointing to a given commit
   - HEAD, master, upstream, origin, <branchname>
   - point to SHA1 hashes (quick explanation of SHA1 hashes)
 - git remote add origin <reponame>
 - git remote add upstream <reponame>
 - git merge <branchname>
 - git fetch upstream master
 - git merge upstream/master
 - git pull (--rebase)
 - git push   (publishing!)
 - git rebase -i
 - git rebase <branchname>   # "plain" rebase

 - pull requests on GitHub/BitBucket

 - distributed repository model
 - centralised repository model

 - git tag
   - git tag -d

 - git stash
 - git stash show -p
 - git stash pop
 - changing branches and git stash
 - conflicts after git stash pop

 - `git subtree` (used to be a complex `git filter-branch` operation)

 - `git log -S'<search text>'`  (pickaxe; search through diffs for a search string)
 - `git log -L 'start_line,stop_line'`
 - `git log -L 'start_line,+-offset'`
 - from the `git log` man page:
git log -L '/int main/',/^}/:main.c
Shows how the function main() in the file main.c evolved over time.
