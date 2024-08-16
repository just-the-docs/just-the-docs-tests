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
: macOS Sonoma 14.4
: Ruby 3.3.4

{% include profiles/jekyll.md jekyll="3.10.0" %}

{% include profiles/jekyll.md jekyll="4.3.3" %}

(The increased time for building `machinetranslate.org` using Jekyll 4
and the `multi-level` PR is from a known inefficiency in generating links to child pages.)

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
[v0.8.1]: https://github.com/just-the-docs/just-the-docs/releases/tag/v0.8.1 "Theme release v0.8.1"
[v0.9.0]: https://github.com/just-the-docs/just-the-docs/releases/tag/v0.9.0 "Theme release v0.9.0"

[just-the-docs-tests]: ../just-the-docs-tests/index/ "About profiling Just the Docs Tests"
[endoflife.date]: ../endoflife.date/index/ "About profiling endoflife.date"
[jekyll-doc-tsl2]: ../jekyll-doc-tsl2/index/ "About profiling jekyll-doc-tsl2"
[machinetranslate.org]: ../machinetranslate.org/index/ "About profiling machinetranslate.org"
[makefile]: https://raw.githubusercontent.com/just-the-docs/just-the-docs-tests/main/makefile
