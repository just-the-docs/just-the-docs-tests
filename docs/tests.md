---
title: Tests
---

# Tests

The main documentation pages of this theme illustrate the use of many of its features,
which to some extent tests their implementation.
The pages linked in the navigation panel here provide further test cases
for particular features
(currently: only those features involved in reported issues).

Browsing the pages may be useful for regression testing when developing PRs
for the next release.
The symbol ✅ draws attention to places where the _current_ release (`v0.3.3`)
produces unsatisfactory formatting or navigation,
already fixed in the candidate for the _next_ release (`v0.4.0-dev`);
the symbol ❌ indicates that the issue has not yet been fixed.

For more rigorous regression testing, we should add unit tests for all features,
and automate checking for differences.
 
The [Markdown kitchen sink](markdown.html) provides a basic visual sanity test
for the theme.
Some of the marked places had or still have unsatisfactory formatting
only in the dark color scheme.
