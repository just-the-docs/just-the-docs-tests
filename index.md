---
title: Home
nav_order: 0
# nav_exclude: true
---

# Just the Docs Tests

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

## Metadata

This website was built with Jekyll using the following version of the Just the Docs theme:

{% capture newline %}
{% endcapture %}

{% capture gemfile_lock %}
{% include_relative Gemfile.lock %}
{% endcapture %}

Theme version
: v{{ theme.version }}

Theme source
: ```
  {% if gemfile_lock contains "GIT" -%}
  {{ gemfile_lock | split: newline | slice: 2, 3 | join: newline | strip }}
  {%- else -%}
  {{ gemfile_lock | split: newline | slice: 2, 1 | join: newline | strip }}
  {%- endif %}
  ```

Jekyll version
: v{{ jekyll.version }}

[Markdown kitchen sink]: {{ site.baseurl }}{% link docs/markdown.md %}
