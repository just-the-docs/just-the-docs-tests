---
title: External links
---

# External links

1.  Check that `nav_external_links` is not set in `_config.yml`, then build the site.

1.  Check that no external links are shown in the navigation panel.

1.  Add the following to `_config.yml`:

    ```yaml
    nav_external_links:
      - title: This site on GitHub
        url: https://github.com/just-the-docs/just-the-docs-tests
        # hide_icon: true
    ```

    Then rebuild the site.

1.  Check that an external link appears once, with an icon.
    
    It should appear after the links to any ordinary pages, but before any collections.

1.  Uncomment the `hide_icon` line in `_config.yml`, then rebuild the site.

1.  Check that the icon does not appear.

1.  Add `nav_exclude: true` to the front matter of `/index/md` and `/docs/markdown.md`.

1.  ❌ Check that the external link still appears.
