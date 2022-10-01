---
title: Tests
---

# Tests
{: .no_toc }

<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>


[Just the Docs] is a [remote theme] for use with the static website generator [Jekyll].
The theme is responsive, easily customizable, and hosted on [GitHub Pages].
It supports documentation pages, but (currently) not blogs.

We are developing this website to test various features of Just the Docs.
The source code of the web pages illustrates how to use the tested features,
and the published pages show their resulting effects.
See the [Just the Docs website] for the main documentation of the theme.

The rest of this page explains how to create a website using Just the Docs
so that we can build and preview the site locally before publishing it on GitHub Pages.
The explanation aims to be as simple as possible;
it could be regarded as a test of the guidance for [getting started]
shown on the current theme home page (which can confuse users new to Jekyll).

Note that some of the files listed below have been updated for use on this 
Just the Docs Tests website
To get started smoothly, copy the listed code from this webpage -- _not_ from
the files themselves.

## Using the v0.3.3 release of Just the Docs

1.  Install Bundler:

    ```sh
    gem install bundler
    ```
    
1.  Create a repository `my-github-username/my-website` on GitHub, and make a local copy.

    N.B. You do _not_ need to clone or download the code of the theme `just-the-docs`
    for building your website!
    
1.  Create `.../my-website/.gitignore`:

    ```
    _site
    .sass-cache
    .jekyll-cache
    .jekyll-metadata
    vendor
    ```

1. Create `.../my-website/_config.yml`:

    ```yml
    title: My website
    url: https://my-github-username.github.io
    baseurl: /my-website

    remote_theme: just-the-docs/just-the-docs@v0.3.3
    plugins:
      - jekyll-remote-theme
      - jekyll-default-layout
      - jekyll-seo-tag
      - rake

    aux_links:
      My website on GitHub:
        - https://github.com/my-github-username/my-website
    permalink: pretty
    ```

1.  Create `.../my-website/Gemfile`:

    ```ruby
    source "https://rubygems.org"
    gem "jekyll", "~> 3.8.5" # used for building on GitHub Pages
    gem "jekyll-remote-theme"
    gem "jekyll-default-layout" # avoids the need for `layout: default`
    gem "jekyll-seo-tag", ">= 2.0"
    gem "rake", ">= 12.3.1"

    ```

1.  Create `.../my-website/index.md`:

    ```md
    ---
    title: Home
    ---

    # My home page
    
    ...
    ```

1.  Run `bundle install` (or `bundle update`, which ignores `Gemfile.lock`).

1.  Run `bundle exec jekyll serve`.
    The log depends partly on some local details, elided below:

    ```
    Configuration file: .../my-website/_config.yml
                Source: .../my-website
           Destination: .../my-website/_site
     Incremental build: disabled. Enable with --incremental
          Generating... 
          Remote Theme: Using theme just-the-docs/just-the-docs
                        done in ... seconds.
     Auto-regeneration: enabled for '.../my-website'
        Server address: http://127.0.0.1:4000
      Server running... press ctrl-c to stop.
    ```

1.  Browse your website at `localhost:4000`.

## Using a pre-release of Just the Docs v0.4.0

The release tag `@v0.3.3` in `_config.yml` above ensures that Jekyll uses
the latest _release_ (version 0.3.3) of the theme when it builds your website.

To switch to using the latest _pre-release_ for version 0.4.0, replace `@v0.3.3`
by `@v0.4.0.rc2` in `_config.yml`:

```yml
remote_theme: just-the-docs/just-the-docs@v0.4.0.rc2
```

## Using Jekyll 4 for building locally

GitHub Pages uses Jekyll version 3.8.5 to build Just the Docs websites.
The gem version specification `"~> 3.8.5"` ensures that you will
install and use a corresponding version to build websites locally
(assuming that you're using Bundler).

To use Jekyll 4 locally, you can simply replace `"~> 3.8.5"` by `">= 3.8.5"`
in your `Gemfile` and run `bundle update`.
Jekyll 4 is considerably faster than Jekyll 3,
but has some breaking changes.

## Reporting issues

To report an apparent mistake on this website,
check whether it has already been reported at [Just the Docs Tests Issues],
and otherwise submit it there as a new issue.

To report an issue with using version 0.3.3 of Just the Docs,
check whether it has already been reported at [Just the Docs Issues] by searching
both open and closed issues.
If it has not been reported,
check also whether it is still an issue when using the latest pre-release of v0.4.0.
If it is, submit it at [Just the Docs Issues] as a new issue,
mentioning that it is present in both `v0.3.3` and the pre-release version.

{% include links.md %}
