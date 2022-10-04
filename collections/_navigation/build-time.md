---
title: Build time
---

# Build time

For small sites, the build time should be only a few seconds.
For larger sites, it can be annoyingly long: several minutes or more.
This may be partly due to inefficiency of Jekyll 3,[^jekyll-4]
or of the Liquid code that builds the navigation panel when using Just the Docs.

[^jekyll-4]: Just the Docs does not yet support use of Jekyll 4.
  Using Jekyll 4 locally to test a site may give different results
  from the default build on GitHub.

However, the HTML of the navigation panel of a Just the Docs site
with hundreds of pages seems to be necessarily large:
the expanders on parent pages support access to all child pages,
so the navigation has to include a link to every included page!
And different pages show different links as active,
so the navigation can't simply be cached, in general.

A site with N pages needs a navigation panel with N links on each page,
which takes time proportional to N².
The pages also need to be sorted according to their `nav_order` fields,
which can be a mixture of numbers and strings.
When the `nav_order` is omitted on a page,
the `title` of the page is used as the `nav_order`;
that is usually a string, but can also be a number (e.g., `404`).
