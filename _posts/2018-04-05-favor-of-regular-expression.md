---
layout: post
title: "Favor Of Regular Expression"
date: 2018-04-05
tags: ['regex']
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


## POSIX

  It's POSIX specification for regular expression in UNIX-like environment tools,such as vim,sed,awk,grep.

### BRE

  |Metacharacters|Meaning|
  |:--|:--|
  |`.`|match any one character|
  |`\\`|escape character|
  |`[`||
  |`^`|anchor for start of characters,complement set in backet expression|
  |`$`|anchor for end of characters|
  |`*`||

*note:in GNU implement,you can use ERE special metacharacters by `\\`.*

### ERE

  |Metacharacters|Meaning|
  |:--|:--|
  |`(`||
  |`)`||
  |`{`||
  |`}`||
  |`+`||
  |`?`||
  |`\|`||

*note:ERE include all BRE metachatacters.*

## PCRE


