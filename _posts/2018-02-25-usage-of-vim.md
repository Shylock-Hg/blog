---
layout: post
title:  "The vim usage"
date:   2018-02-25
tags: ['editor','vim']
published: true
comments: true
script: [post.js]
excerpted: |
    You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site ...
day_quote:
  title: The word of the day!
  description: |
    Put a very powerful message.
---


## Usage of window

|key&cmd|function|
|:--|:--|
|`:e <path/file>`| to  open directory or file.|
|`<C-w>` | to switch window.|

## Usage of move

|key&cmd|function|
|:--|:--|
|`h-j-k-l`|  ... |
|`:30` | to jump to 30th raw.|
|`<G>` | to jump to final raw.|
|`<0>` | to jump to head of current line|
|`<$>` | to jump to tail of current line|
|`<S-%>` | to jump to corresponding bracket.|
|`<S-#>` | to jump to previous word of cursor pointed.| 
|`<S-*>` | to jump to next word of cursor pointed.|

## Usage of cmd

|key&cmd|function|
|:--|:--|
|`N<cmd>` | to press num keys to repeat cmd before input cmd.|

## Search & Replace String

|key&cmd|function|
|:--|:--|
|`:/string` | search the "string"|
|`:s/src/dst/g` | replace "src" to "dst" in current line|
|`:%s/src/dst/g` | replace "src" to "dst" in all lines|


