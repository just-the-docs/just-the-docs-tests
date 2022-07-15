---
title: Home
layout: home
---

# Tests for Just the Docs

It is possible to create a Jekyll website on GitHub,
and use GitHub Pages to build and serve it.
But we strongly recommend to install Jekyll locally:

- You can then test your changes before publication.
- Jekyll takes only a few seconds to build the updated website locally,
    whereas GitHub Pages may take up to 20 minutes.

The current instructions on the [Just the Docs home page](https://just-the-docs.github.io/just-the-docs/)
are a bit unclear about how to create a Jekyll website
that builds both locally and on GitHub Pages
using Just the Docs as a remote theme. 
However, they cite [an example repository](https://github.com/pmarsceill/jtd-remote),
which suggests the following:

1. Install Bundler:

    ```sh
    gem install bundler
    ```
    
1. Create a repository for your website on GitHub, with a local copy,
    and with `.gitignore`:

    ```
    _site
    .sass-cache
    .jekyll-cache
    .jekyll-metadata
    vendor
    ```

1. Create `_config.yml`:

    ```yml
    title: My Website
    remote_theme: just-the-docs/just-the-docs
    plugins:
      - jekyll-remote-theme
    ```

1. Create `Gemfile`:

    ```rb
    source 'https://rubygems.org'
    gem "jekyll", "~> 3.9"
    gem "kramdown-parser-gfm"
    gem "jekyll-remote-theme"
    gem "just-the-docs"
    ```

1. Create `index.md`:

    ```md
    ---
    title: Home
    layout: home
    ---

    # My Website Home Page
    ```

1. Run the following in your repository directory:

    ```sh
    $ bundle install
    Using rake 13.0.6
    Using public_suffix 4.0.7
    Using addressable 2.8.0
    Using bundler 2.3.18
    Using colorator 1.1.0
    Using concurrent-ruby 1.1.10
    Using eventmachine 1.2.7
    Using http_parser.rb 0.8.0
    Using em-websocket 0.5.3
    Using ffi 1.15.5
    Using forwardable-extended 2.6.0
    Using i18n 0.9.5
    Using rb-fsevent 0.11.1
    Using rb-inotify 0.10.1
    Using sass-listen 4.0.0
    Using sass 3.7.4
    Using jekyll-sass-converter 1.5.2
    Using listen 3.7.1
    Using jekyll-watch 2.2.1
    Using rexml 3.2.5
    Using kramdown 2.4.0
    Using liquid 4.0.3
    Using mercenary 0.3.6
    Using pathutil 0.16.2
    Using rouge 3.29.0
    Using safe_yaml 1.0.5
    Using jekyll 3.9.2
    Using rubyzip 2.3.2
    Using jekyll-remote-theme 0.4.3
    Using jekyll-seo-tag 2.8.0
    Using just-the-docs 0.3.3
    Using kramdown-parser-gfm 1.1.0
    Bundle complete! 4 Gemfile dependencies, 32 gems now installed.
    Use `bundle info [gemname]` to see where a bundled gem is installed.

    $ bundle exec jekyll serve
    Configuration file: .../just-the-docs-tests/_config.yml
                Source: .../just-the-docs-tests
           Destination: .../just-the-docs-tests/_site
     Incremental build: disabled. Enable with --incremental
          Generating... 
          Remote Theme: Using theme just-the-docs/just-the-docs
                        done in 4.724 seconds.
     Auto-regeneration: enabled for '.../just-the-docs-tests'
        Server address: http://127.0.0.1:4000
      Server running... press ctrl-c to stop.
    ```
