---
layout: post
title:  "Welcome to Jekyll!"
date:   2018-02-27 20:00:18 +0800
tags: ['others']
published: true
comments: true
script: [post.js]
excerpted: |
    You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site ...
day_quote:
  title: Learning!
  description: |
    Cheer up!
---

* Indice
{: toc}

# Typical workflow of Git-SCM 

## Local
  1. `git clone url`:clone a repository from *url*.
  2. `git branch [branch-name]`:create new branch to modify. 
  3. make change.
  4. `git status`:check file changed by not staged.
  5. `git diff [file]`:check difference of file bwteen staged
  6. `git add [file ...]`:snapshots the files in preparation for versioning.
  7. `git reset [file ...]`:unstages the file,but preserve contents. 
  8. `git commit -m "[description]"`:records file snapshots permannently in version history.
  9. back to 3.

## With remote
  1. `git fetch [bookmark]`:download all history from the remote repository bookmark.
  2. `git merge [bookmark]/[branch]`:combines bookmark's branch into current local branch.
  3. `git push [alias] [branch]`:upload all local branch commits to remote repository. 

## With upstream(special remote)

  1. `git remote -v`:review all remote repositories.
  2. `git remote add upstream <upstream url>`:add upstream repository.
  3. `git fetch upstream`:downloads all history from the upstream.
  4. `git merge upstream/master`:combines upstream to local master.


## Relationship

        upstream
       /
  local
       \remote
