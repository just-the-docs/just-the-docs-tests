---
title: SEO Tag
---

# SEO Tag

1.  Check that `_config.yml` contains:
    
    ```yaml
    plugins:
      - jekyll-seo-tag
    ```

1.  Build this site.

1.  Check that the `<head>` of `_site/index.html` contains only one `<title>` element.

1.  Comment-out `jekyll-seo-tag` from `_config.yml`.

1.  Build this site.

1.  Check that the `<head>` of `_site/index.html` contains only one `<title>` element.

1.  Restore `jekyll-seo-tag` in `_config.yml`.
