---
title: machinetranslate.org
parent: Profiles
nav_order: 4
---

# `machinetranslate.org`

> _Machine Translate_’s mission is to make machine translation more accessible to more people as the field of machine translation grows.

Website
: <https://machinetranslate.org>

Repository
: <https://github.com/machinetranslate/machinetranslate.org>

The website has about 570 pages, with a three-level navigation hierarchy.

The profiles were produced using a clone of the source repo, last pulled:

```sh
machinetranslate.org: stat -f %Sm .git/FETCH_HEAD
Jul 24 17:24:32 2023
```

For profiling:

1.  In `_config.yml`:

    - updated `remote_theme: pmarsceill/just-the-docs@v0.3.3` to `theme: just-the-docs`
    - added plugins `jekyll-remote-theme,` `jekyll-include-cache,` `jekyll-default-layout`, and `rake`

1.  In `Gemfile`:

    - removed `github-pages`
    - added `jekyll-remote-theme`, `jekyll-include-cache`, `jekyll-default-layout`, `jekyll-sitemap`, and `rake` 
