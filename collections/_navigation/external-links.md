---
title: External links
---

# ✅ External links

1.  In `_config.yml` check that `nav_external_links` is not set, then build the site.

1.  Check that no external links are shown in the navigation panel.

1.  In `_config.yml` add the following:

    ```yaml
    nav_external_links:
      - title: This site on GitHub
        url: https://github.com/just-the-docs/just-the-docs-tests
        # hide_icon: true
    ```

    Then rebuild the site.

1.  Check that an external link appears once, with an icon,
    after the links to the ordinary pages, and before the collections.

1.  In `_config.yml` uncomment the `hide_icon` line, then rebuild the site.

1.  Check that the icon does not appear.

1.  In `_config.yml` uncomment in `defaults`:
    
    ```yaml
    -
      scope: {path: ""}
      values: {nav_exclude: true}
    ```
    
    Then rebuild the site.

1.  Check that the external link still appears.

1.  In `_config.yml` replace `collections:` by `collections_hide:`,
    and `just_the_docs:` by `just_the_docs_hide:`,
    then rebuild the site.
    
1.  Check that the external link still appears.

1.  In `_config.yml` revert the above changes.    
