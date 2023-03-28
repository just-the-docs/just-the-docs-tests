---
title: Custom callout color
---

# Custom callout color

1.  In a clone of this tests site, create `_sass/custom/setup.scss` containing:

    ```scss
    $pink-000: #f77ef1;
    $pink-100: #f967f1;
    $pink-200: #e94ee1;
    $pink-300: #dd2cd4;
    ```

1.  In `_sass/color_schemes/test.scss` insert:

    ```scss
    $link-color: $pink-100
    ```

1.  In `_config.yaml` replace:

    ```yaml
      note:
        color: blue
    ```
    
    by:
    
    ```yaml
      note:
        color: pink
        opacity: 0.3
    ```
  
1.  Build the site.

1.  Check that the [Note callout] is colored pink.

[Note callout]: ../../components/callouts/#note
