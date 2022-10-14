---
title: Disabled search spacing
---

# ✅ Disabled search spacing

1.  Check that on this site, the search input is left-aligned,
    and the auxiliary links are right-aligned.
    
1.  Add `search_enabled: false` to `_config.yml`, then rebuild.

1.  Check that the search input is no longer displayed,
    and the auxiliary links are still right-aligned.

However, the alignment of the [custom header] contents seems poor
when the search input and/or the aux links are displayed
(also when neither is displayed):

1.  Add `_includes/header_custom.html` with contents `Custom Header`.

1.  ❌ Check that the text `Custom Header` is suitably aligned,
    and the auxiliary links are still right-aligned.

1.  Remove the auxiliary links from `_config.yml`, then rebuild.

1.  ❌ Check that the text `Custom Header` is suitably aligned,
    with neither the search input nor the aux links displayed.

1.  Remove `search_enabled: false` from `_config.yml`, then rebuild.

1.  ❌ Check that the text `Custom Header` is suitably aligned,
    and the search input is left-aligned.

1.  Restore the auxiliary links in `_config.yml`, then rebuild.

1.  Remove `_includes/header_custom.html`.

[custom header]: https://just-the-docs.github.io/just-the-docs/docs/customization/#custom-header
