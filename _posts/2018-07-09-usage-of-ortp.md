---
layout: post
title: "Usage Of Ortp"
date: 2018-07-09
tags: ['rtp','media','linux']
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

## client

1. Get source of *ortp* from github,switch to branch *0.25-simulator-fix*(version under 0.27 don't depend on shared library).

<!--2. Add support to *H264* payload by add profile in *ortp/src/avprofile.c* by function *av_profile_init*. -->

2. Build *ortp* by `./autogen.sh && ./configure && make`.

3. Install library to system by `sudo make install`.

<!--5. Change *ortp/src/tests/rtpsend.c* to transmite *H264* file by function *rtp_session_set_payload_type*. -->

4. Build test program by `gcc -o rtpsend -lortp rtpsend.c`.

5. Transmite stream *g711* media by `./rtpsend xxx.g711 <ip> <port>`

## server

1. Install *vlc* for server.

2. Write a *udp* file for *g711* stream session, and open *udp* file by vlc.

