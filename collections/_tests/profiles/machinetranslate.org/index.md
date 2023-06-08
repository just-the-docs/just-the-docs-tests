---
title: machinetranslate.org
parent: Profiles
nav_order: 3
---

# `machinetranslate.org`

_Machine Translate_’s mission is to make machine translation more accessible to more people as the field of machine translation grows.

The profiles were produced using a clone of the source repo, last updated on 2023-06-05.

The build created 569 pages, with a three-level navigation hierarchy.

Website
: <https://machinetranslate.org>

Repository
: <https://github.com/machinetranslate/machinetranslate.org>


To facilitate profiling with Jekyll 4, the following changes were made to the clone:

1.  In `Gemfile`:

    - removed `github-pages`
    - added `jekyll-remote-theme`, `jekyll-include-cache`, `jekyll-default-layout`, `jekyll-sitemap`, and `rake` 

1.  In `_config.yml`:

    - updated `remote_theme: pmarsceill/just-the-docs@v0.3.3` to `remote_theme: just-the-docs/just-the-docs`
    - added plugins `jekyll-remote-theme,` `jekyll-include-cache,` `jekyll-default-layout`, and `rake`

## v0.3.3

{% include profiles/profile.md project="machinetranslate.org" version="v0.3.3" %}

## v0.4.0

{% include profiles/profile.md project="machinetranslate.org" version="v0.4.0" %}

## v0.4.2

{% include profiles/profile.md project="machinetranslate.org" version="v0.4.2" %}

## v0.5.1

{% include profiles/profile.md project="machinetranslate.org" version="v0.5.1" %}

## v0.5.2

{% include profiles/profile.md project="machinetranslate.org" version="v0.5.2" %}

## PR 1244 Fix the navigation panel

[Draft 2023-06-06](https://github.com/just-the-docs/just-the-docs/pull/1244/commits/620e53178f708f5b6da764b4302722e8103dcb6a)

{% include profiles/profile.md project="machinetranslate.org" name="pdmosses" version="nav-fix" %}
