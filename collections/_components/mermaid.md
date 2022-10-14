---
title: Mermaid
---

# ✅ Mermaid

1.  Build and serve this site locally with a `_config.yml`
    that does not mention `mermaid`.

1.  Check that `_site/index.html` contains only two occurrences of `mermaid` or `Mermaid`
    (in the navigation) and that the file ends with `</div> </body> </html>`.

1.  Check that the Javascript console does not report any errors
    when you browse this site.

1.  Add the following settings to `_config.yml`:

    ```yaml
    mermaid:
      version: "9.1.3"
    ```
    
    then rebuild and serve this site locally.

1.  Check that the Javascript console does not report any errors
    when you browse this site.

1.  Check that the appearance of the following mermaid diagram is as expected:

    ```mermaid
    graph TD;
        A-->B;
        A-->C;
        B-->D;
        C-->D;
    ```

1.  Create `_includes/mermaid_config.js` with contents:

    ```js
    {
      theme: "forest"
    }
    ```
    
    then rebuild and serve this site locally.
    
1.  Check that the appearance of the previous mermaid diagram has changed as expected.
