---
title: endoflife.date
parent: Profiles
nav_order: 2
---

# `endoflife.date`

> `endoflife.date` documents EOL dates and support lifecycles for various products.

Website
: <https://endoflife.date>

Repository
: <https://github.com/endoflife-date/endoflife.date>

The website has more than 400 pages, with a flat (one-level) navigation hierarchy.

The profiles were produced using a clone of the source repo, last pulled:

```sh
endoflife.date: stat -f %Sm .git/FETCH_HEAD
Aug 15 22:31:52 2024
```

For profiling:

1.  `_includes/css/activation.scss.liquid` was removed, to avoid shadowing the theme file.

1.  `Gemfile` was updated, to facilitate testing with different versions of _Jekyll_ and _Just the Docs_.

1.  `.ruby-version` was changed from `3.3.1` to `3.3.4`.
