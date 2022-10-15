---
title: External links
---

# ✅ External links

1.  Check that no external links are shown in the navigation panel.

1.  Add the following code to `_config.yml`:

    ```yaml
    nav_external_links:
      - title: This site on GitHub
        url: https://github.com/just-the-docs/just-the-docs-tests
        # hide_icon: true
    ```

1.  Rebuild the site.

1.  Check that an external link to this repository on GitHub appears once, with an icon.
    
    It should appear after the links to ordinary pages, but before the collections.

1.  Uncomment the `hide_icon` line in `_config.yml`.

1.  Rebuild the site.

1.  Check that the icon does not appear.
