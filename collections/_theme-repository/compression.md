---
title: HTML compression
---

# HTML compression

1.  Clone the theme docs repository.

    {: .note }
    The theme docs configuration does not exclude `vendor/`,
    because that would disable the layout `vendor/compress`,
    which is needed to activate HTML compression.

1.  In the root directory of the clone, run:

    ```shell
    bundle update
    bundle exec jekyll build
    ```

1.  Check that `index.html` has been compressed.
