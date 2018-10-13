---
layout: post
title: "Startup Of Postgresql"
date: 2018-10-13
tags: ['postgresql']
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

# Installation and Configuration

1. Install by `sudo pacman -Sy postgresql`.
2. Swtich to postgres user by `sudo -u postgres -i`.
3. Initialize database cluster by `initdb -D '/var/lib/postgres/data'`.
4. Switch to user with sudo and run postgresql server by `systemctl start postgresql.service`.
5. Switch to postgres user and create postgresql user by `createuser --interactive`.
6. Switch to user and create db by `createdb dbname`.
7. Enter postgresql REPL by `psql -d dabname`.

