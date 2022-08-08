---
title: Mermaid
---

# Mermaid

1.  Build and serve this site locally with a `_config.yml`
    that does not mention `mermaid`.

1.  Check that the Javascript console does not report any errors
    when you browse this site. ✅

1.  Add the following settings to `_config.yml`:

    ```yaml
    mermaid:
      version: "9.1.3"
      theme: "default"
    ```
    
    then rebuild and serve this site locally.

1.  Check that the Javascript console does not report any errors
    when you browse this site. ✅

1.  Check that the appearance of the following mermaid diagram is as expected: ✅

    ```mermaid
    graph TD;
        A-->B;
        A-->C;
        B-->D;
        C-->D;
    ```

1.  Add the following settings to `_config.yml`:

    ```yaml
    mermaid:
      version: "9.1.3"
      theme: "default"
      logLevel: 'fatal',
      sequence:
        diagramMarginX: 50
        actorMargin: 50
      gantt:
        barGap: 4
        topPadding: 50
    ```
    
    then rebuild and serve this site locally.
    
1.  Check that the appearance of the previous mermaid diagram has changed as expected. ❌
