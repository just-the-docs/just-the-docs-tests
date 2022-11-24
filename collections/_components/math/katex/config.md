---
title: KaTeX Configuration
parent: KaTeX
grand_parent: Math
nav_order: 1
---
# KaTeX Configuration

1.  Create or extend `_includes/head_custom.html` with:

    {% raw %}
    ```html
    {% include katex.html %}
    ```
    {% endraw %}

2.  Copy the following files to your website source repo:

    - [`_includes/katex.html`]
    - [`_layouts/katex.html`]
    - [`assets/js/mathtex-script-type.js`]

3.  To make KaTeX available on *all* your web pages, add to `_config.yml`:

    ```yaml
    math: katex
    ```

    To restrict KaTeX to pages that use it, add to the front matter either:

    ```yaml
    math: katex
    ```

    or:

    ```yaml
    layout: katex
    ```

    You can add a preamble of KaTeX definitions of new commands and environments
    to [`_layouts/katex.html`]. It extends the `default` layout. 

## KaTeX options

The following options are already set in [`_includes/katex.html`] _and_
in [`assets/js/mathtex-script-type.js`]:

```json
globalGroup: true,
trust: true,
strict: false,
throwOnError: false,
```

You can customise KaTeX by adding further [options].

[`_includes/katex.html`]: https://github.com/just-the-docs/just-the-docs-tests/blob/main/_includes/katex.html
[`_layouts/katex.html`]: https://github.com/just-the-docs/just-the-docs-tests/blob/main/_layouts/katex.html
[`assets/js/mathtex-script-type.js`]: https://github.com/just-the-docs/just-the-docs-tests/blob/main/assets/js/kmathtex-script-type.js
[options]: https://katex.org/docs/options.html
