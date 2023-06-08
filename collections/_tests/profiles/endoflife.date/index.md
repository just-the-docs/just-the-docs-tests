---
title: endoflife.date
parent: Profiles
nav_order: 2
---

# `endoflife.date`

`endoflife.date` documents EOL dates and support lifecycles for various products.

The profiles were produced using a clone of the source repo, last updated on 2023-06-04.

The build created 228 pages, with a flat (one-level) navigation hierarchy.

Website
: <https://endoflife.date>

Repository
: <https://github.com/endoflife-date/endoflife.date>

Before all the following profile results, the following changes were made to a clone of the source repo:

1.  `_includes/nav.html` was renamed `_includes/nav.hide.html`,
    to avoid shadowing of the theme file by the current optimised code.

1.  In `_config.yml`, `theme: just-the-docs` was replaced by `remote_theme: just-the-docs/just-the-docs`,
    to facilitate testing with different versions of Just the Docs without re-bundling.
    
    `jekyll-remote-theme` and `rake` then had to be added as plugins,
    and as gems in `Gemfile`.
    
    `jekyll-include-cache` was also added as a plugin and as a gem,
    for testing PR 1244.

1.  `.ruby-version` was changed from `3.0.4` to `3.2.2`

Changes (2) and (3) seem unlikely to have affected the profile results.

## v0.3.3

{% include profiles/profile.md project="endoflife.date" version="v0.3.3" %}

## v0.4.0

{% include profiles/profile.md project="endoflife.date" version="v0.4.0" %}

## v0.4.2

{% include profiles/profile.md project="endoflife.date" version="v0.4.2" %}

## v0.5.1

{% include profiles/profile.md project="endoflife.date" version="v0.5.1" %}

## v0.5.2

{% include profiles/profile.md project="endoflife.date" version="v0.5.2" %}

## PR 1244 Fix the navigation panel

[Draft 2023-06-06](https://github.com/just-the-docs/just-the-docs/pull/1244/commits/620e53178f708f5b6da764b4302722e8103dcb6a)

{% include profiles/profile.md project="endoflife.date" name="pdmosses" version="nav-fix" %}
