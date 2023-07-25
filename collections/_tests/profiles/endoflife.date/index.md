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

The website has about 250 pages, with a flat (one-level) navigation hierarchy.

The profiles were produced using a clone of the source repo, last pulled:

```sh
endoflife.date: stat -f %Sm .git/FETCH_HEAD
Jul 24 17:34:28 2023
```

For profiling:

1.  `_includes/nav.html` was removed, to avoid shadowing the theme file.

1.  `Gemfile` was updated, to facilitate testing with different versions of _Jekyll_ and _Just the Docs_.

1.  `.ruby-version` was changed from `3.0.4` to `3.2.2`, due to installation issues.

Changes (2) and (3) seem unlikely to have affected the profile results.
