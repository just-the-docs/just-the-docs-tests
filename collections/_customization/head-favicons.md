---
title: Head and favicons
---

# ✅ Head and favicons

{: .note}
For a simpler way of setting a link to `favicon.ico`, see [Favicons](../favicon).

1.  Build and serve this tests website locally.

1.  Check that both your local build of this website and the theme docs website show the same favicon.

1.  Move `favicon.ico` to `assets/images/`.

1.  Check that the favicon has disappeared, and that Jekyll does *not* report "ERROR '/favicon.ico' not found".

1.  Add the following to `_includes/head_custom.html`:

    ```html{% raw %}
    <link rel="icon" href="{{ '/assets/images/favicon.ico' | relative_url }}" type="image/x-icon">
    ```{% endraw %}

1.  Check that the favicon has reappeared.

1.  Move the favicon back to the root directory, and revert the contents of `_includes/head_custom.html`.
