---
title: MathJax Configuration
parent: MathJax
grand_parent: Math
nav_order: 1
---
# MathJax Configuration

1.  Create or extend `_includes/head_custom.html` with:

    {% raw %}
    ```html
    {% assign math = page.math | default: layout.math | default: site.math %}

    {% case math %}
      {% when "mathjax" %}
        {% include mathjax.html %}
    {% endcase %}
    ```
    {% endraw %}

2.  Copy the following files to your website source repo:

    - [`_includes/mathjax.html`]
    - [`_layouts/mathjax.html`]
    - [`assets/js/mathjax-script-type.js`]

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
    in [`_layouts/mathjax.html`]. It extends the `default` layout. 

## MathJax options

You can customise MathJax by adding further [options] in [`_includes/mathjax.html`].

[`_includes/mathjax.html`]: https://github.com/just-the-docs/just-the-docs-tests/blob/main/_includes/mathjax.html
[`_layouts/mathjax.html`]: https://github.com/just-the-docs/just-the-docs-tests/blob/main/_layouts/mathjax.html
[`assets/js/mathjax-script-type.js`]: https://github.com/just-the-docs/just-the-docs-tests/blob/main/assets/js/mathjax-script-type.js
[options]: https://docs.mathjax.org/en/latest/web/configuration.html
