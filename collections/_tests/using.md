---
title: Using the tests
---

# Using the tests

To check a PR by `pr-author` with `pr-branch-name` for regression,
build this tests site locally using the PR branch as folows:

1.  Clone [this repository](https://github.com/just-the-docs/just-the-docs-tests/).

1.  Run `JTD_ORG=pr-author JTD_REF=pr-branch-name bundle install`.

1.  Run `JTD_ORG=pr-author JTD_REF=pr-branch-name bundle exec jekyll serve`.

1.  Check visually that the various tests give the expected results.

1.  Check that the HTML in `_site` is the same as built with the latest release of the theme.

The following shell command may be useful for checking HTML, ignoring differences in whitespace and metadata:

```sh
diff -rw -x "*.js*" -x "*.map" -I "published_time" -I "dateModified" -I "<meta property=" -I "<link rel=" -I "@context" _site _site-v0.m.n | more
```
