---
layout: post
title: "Modifier Of C Language"
date: 2018-05-19
tags: ['c']
published: true
comments: true
script: [post.js]
excerpted: |

day_quote:
  title: Learning!
  description: |
    Cheer up!
---

* Indice
{: toc}


`const` limit modify to a variable **in compiler** level.

`volatile` limit cache access of variable in **cpu instruction** level.

`auto` default for stack variable means auto-release.

`static` store local variable to staic memory area, or limit global variable access.

`register` alloc local variable to cpu register.

`extern` declare global symbol be accessable by external(default for function).

