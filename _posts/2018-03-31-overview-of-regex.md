---
layout: post
title:  "Overview of Regular Expression!"
date:   2018-03-31
tags: ['regex']
published: true
comments: true
script: [post.js]
excerpted: |
    Base elements and rules of regular expression.
day_quote:
  title: Learning!
  description: |
    Cheer up!
---

* Indice
{: toc}

## Base elements
  - literal characters,(eg.`abc`)
  - meta characters,(eg.`.`)

  *note:all valid regex is composed by printable ascii characters*

## reducing rules
  
  - position
    - anchor,(eg.`$`)
    - lookground,(eg.``)

  - set
    - character class,(eg.`[0-9]`)
    - shorthand,(eg.`\d`)
    - unicode properties,(eg.`\p{L}`)
    - dot match,(eg.`.`)

  - escape character
    - non-printable characters,(eg.`\t`)
    - literal meta characters,(eg.`\\`)
    - non ascii characters,(eg.`\uFFFF`)

  - logic
    - alternation,(eg.`a|b`)
    - repetition(greedy,lazy),(eg.`[0-9]+`)

  - grouping and caturing
    - group,(eg.`set(Value)?`)
    - group without caturing,((eg.`set(?:Value)?`)
    - back reference,(eg.`([abc])=\1`)
    - named group,(eg.`(?<mygroup>[abc])=\k<mygroup>`)

