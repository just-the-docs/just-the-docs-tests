---
title: Search placeholder
---

# Customize search placeholder

1.  Check that `_includes/search_placeholder_custom.html` does not exist.

1.  Check that the search placeholder on the home page is "Search Just the Docs Tests".

1.  Customize the search placeholder by creating `_includes/search_placeholder_custom.html` and adding:
 
    ```html
    <!-- Any HTML gets removed --><em>
      Search this site
    <!-- Any HTML gets removed --></em>
    ```
1.  Refresh the page.

1.  Check that the search placeholder on the home page is now "Search this site",
    without the `<em>` styling.

1.  Remove `_includes/search_placeholder_custom.html`.
