---
title: Home
nav_order: 0
# nav_exclude: true
---

JtD version
: {{ site.remote_theme | replace: "@", " @" }}

Jekyll version
: v{{ jekyll.version }}

The main documentation pages of the Just the Docs theme illustrate the use of many of its features,
which to some extent tests their implementation.
The collections of pages linked in the navigation panel here provide explicit tests for particular features
(mainly those features involved in PRs merged since the release of `v0.3.3`).

Browsing the test pages may be useful for regression testing when developing PRs
intended for inclusion in future releases.
For more rigorous regression testing, we should add unit tests for _all_ features,
and automate checking for differences.
 
The [Markdown kitchen sink] provides a basic visual sanity test
for the theme.
(Some of the marked places had or still have unsatisfactory formatting
only in the dark color scheme.)

[Markdown kitchen sink]: {{ site.baseurl }}{% link docs/markdown.md %}
