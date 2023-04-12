---
title: Mermaid
---

# Mermaid

1.  Build and serve this site locally with a `_config.yml`
    that does not mention `mermaid`.

1.  Check that `_site/index.html` contains only two occurrences of `mermaid` or `Mermaid`
    (in the navigation) and that the file ends with `</div> </body> </html>`.

1.  Check that the Javascript console does not report any errors
    when you browse this site.

## Version 9.4.3

1.  Add the following settings to `_config.yml`:

    ```yaml
    mermaid:
      version: "9.4.3"
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

1.  Remove or rename `_includes/mermaid_config.js`.

## Version 10.1.0

1.  Update the mermaid settings in `_config.yml` to:

    ```yaml
    mermaid:
      version: "10.1.0"
    ```

    then rebuild and serve this site locally.

1.  Check that the Javascript console does not report any errors when you browse this site,
    and that the appearance of the mermaid diagram above is as expected.

## Local mermaid library

### Version 9.4.3

1.  Download version 9.4.3 of [version 9.4.3 of `mermaid.min.js`] and [version 9.4.3 of `mermaid.min.js.map`] to `/assets/js/mermaid-9.4.3/`.

1.  Update the mermaid settings in `_config.yml` to:

    ```yaml
    mermaid:
      version: "9.4.3"
      path: "/assets/js/mermaid-9.4.3/mermaid.min.js"
    ```

    then rebuild and serve this site locally.

1.  Check that the Javascript console does not report any errors when you browse this site,
    and that the appearance of the mermaid diagram above is as expected.
    
### Version 10.1.0

1.  Download the _entire contents_ of [`mermaid@10.1.0/dist/`] (e.g., using `wget -r`).

1.  Update the mermaid settings in `_config.yml` to:

    ```yaml
    mermaid:
      version: "10.1.0"
      path: "/assets/js/mermaid-10.1.0/mermaid.esm.min.mjs"
    ```

    then rebuild and serve this site locally.

1.  Check that the Javascript console does not report any errors when you browse this site,
    and that the appearance of the mermaid diagram above is as expected.

----


[version 9.4.3 of `mermaid.min.js`]: https://cdn.jsdelivr.net/npm/mermaid@9.4.3/dist/mermaid.min.js
[version 9.4.3 of `mermaid.min.js.map`]: https://cdn.jsdelivr.net/npm/mermaid@9.4.3/dist/mermaid.min.js.map
[`mermaid@10.1.0/dist/`]: https://cdn.jsdelivr.net/npm/mermaid@10.1.0/dist/
