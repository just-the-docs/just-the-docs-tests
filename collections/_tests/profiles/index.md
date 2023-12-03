---
title: Profiles
has_children: true
---

# Profiles

The following tables summarise the build times for several websites
when using the specified versions of _Jekyll_ and the _Just the Docs_ theme.

* The website names link to pages with notes about any changes required for profiling.
* The theme refs link to the relevant release or PR in the theme repo on GitHub.
* The build times are in seconds, and link to the raw profiling results produced by Jekyll.

A [makefile] automates the profiling.

Platform
: Apple MacBook Air M2, 2022

System
: macOS Ventura 13.4, 13.5, 13.6

{: .note }
> When a website depends on the `github-pages` gem,
> it is automatically built with Jekyll v3.9.3.
> For profiling, the gem was replaced by other gems.

{% include profiles/jekyll.md jekyll="3.9.3" %}

{% include profiles/jekyll.md jekyll="4.3.2" %}

[v0.3.3]: https://github.com/just-the-docs/just-the-docs/releases/tag/v0.3.3 "Theme release v0.3.3"
[v0.4.2]: https://github.com/just-the-docs/just-the-docs/releases/tag/v0.4.2 "Theme release v0.4.2"
[v0.5.0]: https://github.com/just-the-docs/just-the-docs/releases/tag/v0.5.0 "Theme release v0.5.0"
[v0.5.1]: https://github.com/just-the-docs/just-the-docs/releases/tag/v0.5.1 "Theme release v0.5.1"
[v0.5.2]: https://github.com/just-the-docs/just-the-docs/releases/tag/v0.5.2 "Theme release v0.5.2"
[v0.5.4]: https://github.com/just-the-docs/just-the-docs/releases/tag/v0.5.4 "Theme release v0.5.4"
[#1244]: https://github.com/just-the-docs/just-the-docs/pull/1244 "Theme pull request 1244"
[v0.6.0]: https://github.com/just-the-docs/just-the-docs/releases/tag/v0.6.0 "Theme release v0.6.0"
[v0.6.1]: https://github.com/just-the-docs/just-the-docs/releases/tag/v0.6.1 "Theme release v0.6.1"
[v0.6.2]: https://github.com/just-the-docs/just-the-docs/releases/tag/v0.6.2 "Theme release v0.6.2"
[v0.7.0]: https://github.com/just-the-docs/just-the-docs/releases/tag/v0.7.0 "Theme release v0.7.0"

[just-the-docs-tests]: ../just-the-docs-tests/index/ "About profiling Just the Docs Tests"
[endoflife.date]: ../endoflife.date/index/ "About profiling endoflife.date"
[jekyll-doc-tsl2]: ../jekyll-doc-tsl2/index/ "About profiling jekyll-doc-tsl2"
[machinetranslate.org]: ../machinetranslate.org/index/ "About profiling machinetranslate.org"
[makefile]: https://raw.githubusercontent.com/just-the-docs/just-the-docs-tests/main/makefile
