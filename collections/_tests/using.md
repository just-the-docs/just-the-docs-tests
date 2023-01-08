---
title: Using the tests
---

# Using the tests

To test the tests:

1.  Clone [this repository](https://github.com/just-the-docs/just-the-docs-tests/).

1.  Update `_config.yml` to use the relevant version of `just-the-docs` as `remote_theme`.

1.  Build and serve this site locally.

1.  For each PR with a ✅, follow the link to its page of tests, and check that they  _succeed_.

If any of the PR checks fail,
please [submit an issue in this repository](https://github.com/just-the-docs/just-the-docs-tests/issues),
with the PR number as title, stating:

- [ ] Remote theme version
- [ ] Which check(s) were supposed to succeed, but failed
