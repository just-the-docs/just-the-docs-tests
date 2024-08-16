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

The website has more than 900 pages, with a three-level navigation hierarchy.

The profiles were produced using a clone of the source repo, last pulled:

```sh
machinetranslate.org: stat -f %Sm .git/FETCH_HEAD
Aug 16 09:46:59 2024
```

For profiling:

1.  In `_config.yml`:

    - updated `remote_theme: pmarsceill/just-the-docs@v0.3.3` to `theme: just-the-docs`

1.  In `Gemfile`:

    - removed `github-pages`
    - added:
      
      ```ruby
      gem 'jekyll-target-blank'
      gem 'html-proofer'
      # Added some dependencies of github-pages:
      gem 'jekyll-default-layout'
      gem 'jekyll-gist'
      gem 'jekyll-github-metadata'
      gem 'jekyll-mentions'
      gem 'jekyll-optional-front-matter'
      gem 'jekyll-paginate'
      gem 'jekyll-readme-index'
      gem 'jekyll-relative-links'
      gem 'jekyll-sitemap'
      gem 'jekyll-titles-from-headings'
      gem 'kramdown-parser-gfm'
      ```
1.  Removed files shadowing theme files:

    - `includes/head.html`
    - `layouts/default.html`

1.  Fixed some issues:

    - non-ASCII characters in URLs
    - missing quotation marks
