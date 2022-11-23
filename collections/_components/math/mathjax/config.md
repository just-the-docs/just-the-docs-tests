---
title: MathJax Configuration
parent: MathJax
grand_parent: Math
nav_order: 1
---
# MathJax Configuration

1.  Create or extend `_includes/head_custom.html` by:

    {% raw %}
    ```html
    {% include math.html %}
    ```
    {% endraw %}

2.  Copy the following files to your website source repo:

    - [`_includes/math.html`]
    - [`_includes/mathjax.html`]
    - [`_layouts/mathjax.html`]

3.  To make MathJax available on *all* your web pages, add to `_config.yml`:

    ```yaml
    math: mathjax
    ```

    To restrict MathJax to pages that use it, add to the front matter either:

    ```yaml
    math: mathjax
    ```

    or:

    ```yaml
    layout: mathjax
    ```

    You can add a preamble of MathJax definitions of new commands and environments
    to the `mathjax` layout. It extends the `default` layout. 

## MathJax options

You can customise MathJax by adding [options].

[`_includes/math.html`]: https://github.com/just-the-docs/just-the-docs-tests/blob/main/_includes/math.html
[`_includes/mathjax.html`]: https://github.com/just-the-docs/just-the-docs-tests/blob/main/_includes/mathjax.html
[`_layouts/mathjax.html`]: https://github.com/just-the-docs/just-the-docs-tests/blob/main/_layouts/mathjax.html
[options]: https://docs.mathjax.org/en/latest/web/configuration.html