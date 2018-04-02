---
layout: post
title:  "Usage Of Sed"
date:   2018-04-02
tags: ['sed','linux']
published: true
comments: true
script: [post.js]
excerpted: |
    Base usage of GNU sed.
day_quote:
  title: Learning!
  description: |
    Cheer up!
---

* Indice
{: toc}

## Typical usage

  `sed SCRIPT INPUTFILE > OUTPUTFILE`

*note:if INPUTFILE==OUTPUFILE must call sed with option `-i`.*
*note:default INPUTFILE is stdin,default OUTPUTFILE is stdout.*

## String repalcing

  `sed "3,5s/pattern/object/1" inputfile > outputfile`:replace the first matched characters in 3-5th lines by `pattern` with `object`.
  `sed "s/pattern/object/3g" inputfile > outputfile`:replace the 3-infinate matched characters in each line by `pattern` with `object`.



