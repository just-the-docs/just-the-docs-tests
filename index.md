---
title: Home
layout: home
---

# Tests for Just the Docs

Just the Docs is a remote theme for use with Jekyll.
We are developing this website to test the features of Just the Docs.
The source code of the web pages illustrates how to use the tested features,
and the published pages shows their resulting effects.
See the Just the Docs website for the main documentation of the theme.

The rest of this page explains how we created this website
so that we can build and preview the site locally
before publishing it on GitHub Pages.

1.  Install Bundler:

    ```sh
    gem install bundler
    ```
    
1.  Create the repository `just-the-docs-tests` on GitHub, and make a local copy.
    
1.  Create `.gitignore`:

    ```
    _site
    .sass-cache
    .jekyll-cache
    .jekyll-metadata
    vendor
    ```

1. Create `_config.yml`:

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
    of the theme whenever it builds the website.

1.  Create `Gemfile`:

    ```ruby
    source 'https://rubygems.org'
    gem "jekyll", "~> 3.9"
    gem "kramdown-parser-gfm"
    gem "jekyll-remote-theme"
    gem "just-the-docs", "0.3.3"
    ```
    
    Warning:
    It appears that with the current version of `jekyll-remote-theme`,
    Jekyll does not check the consistency of version numbers specified in
    `_config.yml` and in `Gemfile`.

1.  Create `index.md`:

    ```md
    ---
    title: Home
    layout: home
    ---

    # Tests for Just the Docs
    
    ...
    ```

1.  Run `bundle install`. Log:

    ```
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
    ```

1.  Run `bundle exec jekyll serve`. Log:

    ```
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