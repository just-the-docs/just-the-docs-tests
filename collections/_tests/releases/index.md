---
title: Testing pre-releases
---

# Testing pre-releases

In the test results for a pre-release of v0.4.0,
a ✅ before a PR summary line indicates that:

- the link to the title of the PR leads to a page of tests of its observational effect, and
- the tests succeed in the pre-release.

The absence of a ✅ below indicates that although the PR has been reviewed and merged,
tests for it are not yet included on this site.

{: .note }
Changes to the theme docs website should also be tested for _accuracy_.
Such docs tests have _not_ yet been added!

To test the tests:

1.  Update `_config.yml` to use the pre-release.

1.  Build and serve this site locally.

1.  For each PR with a ✅,
    follow the link to its page of tests,
    and check that they  _succeed_.

If any of the PR checks fail,
please [submit an issue in this repository](https://github.com/just-the-docs/just-the-docs-tests/issues),
stating:

- [ ] Pre-release version
- [ ] PR #
- [ ] Which check(s) were supposed to succeed, but failed in the pre-release
