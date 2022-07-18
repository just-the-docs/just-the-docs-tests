---
title: Home
layout: home
---

# Tests for Just the Docs

[Just the Docs] is a [remote theme] for use with the static website generator [Jekyll].
The theme is responsive, easily customizable, and hosted on [GitHub Pages].
It supports documentation pages, but (currently) not blogs.

We are developing this website to test various features of Just the Docs.
The source code of the web pages illustrates how to use the tested features,
and the published pages show their resulting effects.
See the [Just the Docs website] for the main documentation of the theme.

The rest of this page explains how we created this website
so that we can build and preview the site locally before publishing it on GitHub Pages.
The explanation aims to be as simple as possible;
it could be regarded as a test of the guidance for [getting started]
shown on the theme home page (which can confuse users new to Jekyll).

Note that some of the files shown below will subsequently be updated,
to support further tests.

1.  Install Bundler:

    ```sh
    gem install bundler
    ```
    
1.  Create the repository [`just-the-docs-tests`] on GitHub, and make a local copy.
    
1.  Create [`.gitignore`]\:

    ```
    _site
    .sass-cache
    .jekyll-cache
    .jekyll-metadata
    vendor
    ```

1. Create [`_config.yml`]\:

    ```yml
    title: Just the Docs Tests
    remote_theme: just-the-docs/just-the-docs@v0.3.3
    plugins:
      - jekyll-remote-theme
    aux_links:
      Just the Docs Tests on GitHub:
        - //github.com/just-the-docs/just-the-docs-tests
    ```
    
    Note: 
    The release tag `@v0.3.3` above ensures that Jekyll uses version 0.3.3
    of the theme when it builds the website.

1.  Create [`Gemfile`]\:

    ```ruby
    source 'https://rubygems.org'
    gem "jekyll", "~> 3.9"
    gem "kramdown-parser-gfm"
    gem "jekyll-remote-theme"
    gem "just-the-docs", "0.3.3"
    ```
    
    Warning:
    Jekyll does not check that the theme version specified in `_config.yml`
    is consistent with that specified in `Gemfile`.

1.  Create [`index.md`]\:

    ```md
    ---
    title: Home
    layout: home
    ---

    # Tests for Just the Docs
    
    ...
    ```

1.  Run `bundle install`.
    The log includes the following lines:

    ```
    Using jekyll 3.9.2
    Using just-the-docs 0.3.3
    Bundle complete! 4 Gemfile dependencies, 32 gems now installed.
    ```

1.  Run `bundle exec jekyll serve`.
    The log depends partly on some local details:

    ```
    Configuration file: [...]/just-the-docs-tests/_config.yml
                Source: [...]/just-the-docs-tests
           Destination: [...]/just-the-docs-tests/_site
     Incremental build: disabled. Enable with --incremental
          Generating... 
          Remote Theme: Using theme just-the-docs/just-the-docs
                        done in [...] seconds.
     Auto-regeneration: enabled for '[...]/just-the-docs-tests'
        Server address: http://127.0.0.1:4000
      Server running... press ctrl-c to stop.
    ```

{% include links.md %}
