---
title: Disabled search spacing
---

# Disabled search spacing

1.  Check that on this site, the search input is left-aligned,
    and the auxiliary links are right-aligned.
    
1.  Add `search_enabled: false` to `_config.yml`, then rebuild.

1.  Check that the search input is no longer displayed,
    and the auxiliary links are still right-aligned.

However, the alignment of the [custom header] contents is inconsistent
when the search input and/or the aux links are displayed (also when neither is displayed).
See [issue #1003].

[custom header]: https://just-the-docs.github.io/just-the-docs/docs/customization/#custom-header
[issue #1003]: https://github.com/just-the-docs/just-the-docs/issues/1003
