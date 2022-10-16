---
title: Nav footer
---

# ✅ Customize navigation panel footer

1.  Check that `_includes/nav_footer_custom.html` does not exist.

1.  Check that the navigation panel footer on the home page is
    "This site uses Just the Docs, a documentation theme for Jekyll.".

1.  Customize the nav footer by creating `_includes/nav_footer_custom.html` and adding:
 
    ```html {% raw %}
    <footer class="site-footer">
      This site uses 
      <a href="https://github.com/just-the-docs/just-the-docs">Just the Docs</a>,
      a documentation theme for Jekyll.
      <br> {{ site.remote_theme | replace: "@", " @" }}
    </footer>
    ```{% endraw %}
    
1.  Refresh the page.

1.  Check that the nav footer is now:

    > This site uses <a href="https://github.com/just-the-docs/just-the-docs">Just the Docs</a>, a\\
    > documentation theme for Jekyll.\\
    > {{ site.remote_theme | replace: "@", " @" }}

1.  Remove `_includes/nav_footer_custom.html`.
