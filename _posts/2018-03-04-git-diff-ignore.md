---
layout: post
title:  "Git diff ignore"
date:   2018-02-27 20:00:18 +0800
tags: ['git']
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

# Implement ignore function for git diff

##  1.Set git-diff driver
 
  run `git config diff.nodiff.command /usr/bin/true` in the root of repository.

## 2.Set git attributes
  As bellow:

```
*.md  diff=nodiff
*.log diff=nodiff
```
  
  The grammer is same as *.gitignore* file,and it make *git diff* ignore the files matched.
