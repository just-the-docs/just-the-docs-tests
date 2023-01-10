---
title: Modular layouts
---

# ✅ Modular layouts

1.  Check that `_config.yml` sets:

    ```yaml
    compress_html:
      blanklines: true
    ```

1.  Build this site using the theme commit just before merging PR #1058:

    ```yaml
    remote_theme: just-the-docs/just-the-docs@4469f45cbd3d92c3df8da6e26ffd3c7fa86f5737
    ```

1.  Rename `_site` to `_site_old`.

1.  Build this site using the theme commit just after merging PR #1058:

    ```yaml
    remote_theme: just-the-docs/just-the-docs@2495d3e6bb5720ae23e35caf16888f0c7f37ede0
    ```

1.  Run the following shell command in the root directory of this site:
 
    ```shell
    diff -rEBwtb -x "*.js*" -I "published_time\|dateModified" _site_old/ _site/ > diff.txt
    ```

1.  Check that `diff.txt` contains only the following:

    ```
    ???
    ```

1.  Remove `_includes/search_placeholder_custom.html`.
