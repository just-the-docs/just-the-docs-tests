---
title: GA tags
---

# ✅ Google Analytics tags

1.  Check that `_config.yml` contains:
    
    ```yaml
    ga_tracking: UA-2709176-10,G-5FG1HLH3XQ
    ga_tracking_anonymize_ip: true
    ```

1.  Build this site.

1.  Check that the `<head>` of `_site/index.html` contains the following:

    ```html
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-2709176-10"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
        gtag('config', 'UA-2709176-10', { 'anonymize_ip': true });
        gtag('config', 'G-5FG1HLH3XQ', { 'anonymize_ip': true });
    </script>
    ```

1.  Comment-out `ga_tracking` from `_config.yml`.

1.  Build this site.

1.  Check that the `<head>` of `_site/index.html` does not contain any GA tags.

1.  Restore `ga_tracking` in `_config.yml`.
