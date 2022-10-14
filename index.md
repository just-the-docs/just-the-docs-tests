---
title: Home
nav_order: 0
---

JtD version
: {{ site.remote_theme | split: "@" | slice: 1 | join: "" }}

Jekyll version
: 3.8.7

The main documentation pages of this theme illustrate the use of many of its features,
which to some extent tests their implementation.
The pages linked in the navigation panel here provide further test cases
for particular features
(currently: only those features involved in issues reported since the release of `v0.3.3`).

Browsing the pages may be useful for regression testing when developing PRs
intended for inclusion in future releases.
The symbol ✅ draws attention to places where release `0.3.3`
produces unsatisfactory formatting or navigation,
but the issue has already been fixed in the current candidate for the _next_ release (`0.4.0`);
the symbol ❌ indicates that the issue has not yet been fixed.

For more rigorous regression testing, we should add unit tests for _all_ features,
and automate checking for differences.
 
The [Markdown kitchen sink] provides a basic visual sanity test
for the theme.
Some of the marked places had or still have unsatisfactory formatting
only in the dark color scheme.

[Markdown kitchen sink]: {{ site.baseurl }}{% link docs/markdown.md %}
