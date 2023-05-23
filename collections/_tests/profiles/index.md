---
title: Profiles
has_children: true
---

# Profiles

Platform
: Apple MacBook Air M2, 2022

System
: macOS Ventura 13.4

Jekyll
: 4.3.2

Build
: ```sh
  DIR=../just-the-docs-tests

  rm Gemfile.lock
  bundle install > /tmp/install.log
  bundle exec jekyll clean >> /tmp/install.log
  bundle exec jekyll build --config _config.yml,$DIR/_config_$2.yml --profile > $DIR/_includes/profiles/$1/$2.txt 2> /tmp/build.log

  ```

Each of the following pages shows the profiles for building a particular website using different versions of Just the Docs.
