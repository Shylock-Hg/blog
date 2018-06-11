---
layout: post
title: "Cross Develop In Linux"
date: 2018-05-31
tags: ['embeded-system','linux']
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

## Architecture

### build system

1. cross compiler toolchain such as *gcc-xxx-xxx-xxx*.
2. support files such as *SDK(ARCH, register, HAL)*, *linker script*, *Makefile*.
option:

### debug architecture

1. debugger driver such as *jlink* , *stlink*.
2. debugger gdb server.
3. gdb of toolchain.

![cross-debug-in-linux]({{ "/assets/images/posts/cross-debug-in-linux.png" }})


