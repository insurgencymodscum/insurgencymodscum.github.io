---
layout: post
title: '[NOTES][RTFM] Git Notes'
date: 2017-09-06
author: InsModScum
tags:
- IMS
- 2017
- Git
- Notes
- ProTip
- RTFM
---

# Turn off "LF will be replaced by CRLF" #

   ~~~
   https://stackoverflow.com/questions/6500880/git-turn-off-lf-will-be-replaced-by-crlf-warning
   Needs TLDR:
   http://adaptivepatchwork.com/2012/03/01/mind-the-end-of-your-line/
   ~~~

   ---

   ~~~
   # do not convert line endings (consequently no warnings)
   git config --global --add core.autocrlf off
   ~~~

# Show last commit title #

   ~~~
   git log -1 --pretty=%B

   Delete last commit, keep changed files.

   https://stackoverflow.com/questions/15772134/can-i-delete-a-git-commit-but-keep-the-changes
   git reset @~

   DOES NOT WORK:
   git reset HEAD^
   ~~~

# Recover deleted (lost) commit (after rebase [rebasing]) #

   ~~~
   git reflog
   git reset --hard [HASH]
   ~~~

# Delete last commit, but keep the changes #

   ~~~
   git reset @~
   ~~~

# "git ammend" with last commit message #

   ~~~
   git commit --amend --no-edit
   ~~~

# Delete Remote GitHub Tags #

   ~~~
   https://help.github.com/articles/pushing-to-a-remote/
   ~~~

   To push tags (**one way only**):

   ~~~
   git push --tags
   ~~~

   To delete tags on GitHub:

   ~~~
   git push  <REMOTENAME> :<BRANCHNAME>
   git push origin :TAGNAME
   ~~~

# Rebase One Branch On Top of Another #

   ~~~
   git checkout testbranch
   git rebase master # rebase the current branch on top of master

   # rebase paused due to merge conflicts

   git checkout testbranch filename # use testbranch's version of a file
   git rebase --continue
   git branch --delete master
   git branch --move master # rename current branch to master
   ~~~

# git repack #

   ~~~
   -a
   Instead of incrementally packing the unpacked objects, pack everything referenced into a single pack. Especially useful when packing a repository that is used for private development. Use with -d. This will clean up the objects that git prune leaves behind, but git fsck --full --dangling shows as dangling.

   Note that users fetching over dumb protocols will have to fetch the whole new pack in order to get any contained object, no matter how many other objects in that pack they already have locally.

   -d
   After packing, if the newly created packs make some existing packs redundant, remove the redundant packs. Also run git prune-packed to remove redundant loose object files.
   ~~~

# Rebase last X commits #

   ~~~
   git rebase -i [HASH]
   ~~~

# logAllRefUpdates #

**TLDR: FALSE**

   ~~~
   https://git-scm.com/docs/git-config

   core.logAllRefUpdates
   Enable the reflog. Updates to a ref <ref> is logged to the file "$GIT_DIR/logs/<ref>", by appending the new and old SHA-1, the date/time and the reason of the update, but only when the file exists. If this configuration variable is set to true, missing "$GIT_DIR/logs/<ref>" file is automatically created for branch heads (i.e. under refs/heads/), remote refs (i.e. under refs/remotes/), note refs (i.e. under refs/notes/), and the symbolic ref HEAD. If it is set to always, then a missing reflog is automatically created for any ref under refs/.

   This information can be used to determine what commit was the tip of a branch "2 days ago".

   This value is true by default in a repository that has a working directory associated with it, and false by default in a bare repository.
   ~~~

---

IMSM065_A3E34C440111C2CEE526B5B194B72AB65D2088F3
