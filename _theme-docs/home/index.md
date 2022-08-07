---
title: Testing Home
---

# Testing Home

First, let's test the instructions on the [Just the Docs home page](https://just-the-docs.github.io/just-the-docs/).

## Local installation: Use the gem-based theme

Added this page at `index.md` with front matter:

```yml
---
title: Home
layout: default
---
```

1. Install the Ruby Gem

    ```shell
    $ gem install just-the-docs

    Successfully installed just-the-docs-0.3.3
    Parsing documentation for just-the-docs-0.3.3
    Done installing documentation for just-the-docs after 0 seconds
    1 gem installed
    ```

    The following alternative assumes that one already has a `Gemfile`,
    which can be created using `jekyll new`, but isn't essential.
    
    ```ruby
    # .. or add it to your your Jekyll site’s Gemfile
      gem "just-the-docs"
    ```

2. Add Just the Docs to your Jekyll site’s `_config.yml`

    `_config.yml`:

    ```yml
    title: Just the Docs Tests
    theme: just-the-docs
    ```

3. Skipped: _Optional_: Initialize search data (creates `search-data.json`)

    _Warning: This step also seems superfluous: search works locally without it._

4. Run your local Jekyll server

    ```shell
    $ jekyll serve
    
    Configuration file: .../just-the-docs-tests/_config.yml
                Source: .../just-the-docs-tests
           Destination: .../just-the-docs-tests/_site
     Incremental build: disabled. Enable with --incremental
          Generating... 
                        done in 0.356 seconds.
     Auto-regeneration: enabled for '.../just-the-docs-tests'
        Server address: http://127.0.0.1:4000
      Server running... press ctrl-c to stop.
    ```

5. Point your web browser to <http://localhost:4000>

That worked okay for me: 
my browser (Safari on macOS) shows a correctly formatted website
using Just the Docs.

## Quick start: Use as a GitHub Pages remote theme

- Add Just the Docs to your Jekyll site’s `_config.yml` as a remote theme

    `_config.yml` updated to:

    ```yml
    title: Just the Docs Tests
    theme: just-the-docs
    remote_theme: just-the-docs/just-the-docs
    ```
    
    Using the gem-based theme still works.
    But the site doesn't build on Pages:
    
    ```
    Configuration file: /github/workspace/./_config.yml
    Theme: just-the-docs
    github-pages 227 | Error:  The just-the-docs theme could not be found.
    ```
    
    Commenting-out the `theme` doesn't format pages properly:
    
    ```
    Build Warning: Layout 'default' requested in index.md does not exist.
    ```

    Putting the `remote_theme` _before_ the `theme` eliminates the build warning
    when using the gem-based theme.
    
    But building the site on Pages gives the same error as before… 😖
    
So it seems that to get a site that builds both locally and on Pages,
we need to _remove_ the `theme` and _use a `Gemfile`_!?

The docs include the following advice:

> If you’re hosting your site on GitHub Pages, 
> [set up GitHub Pages and Jekyll locally](https://help.github.com/en/articles/setting-up-your-github-pages-site-locally-with-jekyll)
> so that you can more easily work in your development environment.

That page includes:

> Prerequisites
> 
> Before you can use Jekyll to test a site, you must:
> 
> - Install Jekyll.
> - Create a Jekyll site. For more information, 
>     see "[Creating a GitHub Pages site with Jekyll](https://docs.github.com/en/articles/creating-a-github-pages-site-with-jekyll)."

There we find:

> [Creating your site](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/creating-a-github-pages-site-with-jekyll#creating-your-site)
> ...
> (7) To create a new Jekyll site, use the jekyll new command:
>   ```shell
>   $ jekyll new --skip-bundle .
>   # Creates a Jekyll site in the current directory
>   ```

So we run:

```shell
$ jekyll new --skip-bundle .
Conflict: .../just-the-docs-tests exists and is not empty.
          Ensure .../just-the-docs-tests is empty or else try again with `--force` to proceed and overwrite any files.
 
$ jekyll new --skip-bundle --force .
New jekyll site installed in .../just-the-docs-tests. 
Bundle install skipped. 
```

That has written the following files:

- `_posts`: a new folder containing a post with a welcome message
- `_config.yml`: overwritten with the standard Jekyll site config 
    (15 lines of YAML, 40 lines of comments)
- `.gitignore`: appended `vendor`
- `404.html`
- `about.markdown`
- `Gemfile`
- `index.markdown`: a dummy home page

__Ignore the other steps on the GitHub web pages for now!__

Edit `_config.yml`:

- Comment-out all lines
- Add the following lines:
    
    ```yml
    title: Just the Docs Tests
    remote_theme: just-the-docs/just-the-docs
    ```

Edit `Gemfile`:

- Replace `gem "minima", "~> 2.5"` by:

    ```ruby
    `gem "just-the-docs"`
    ```

Test locally:

```shell
$ bundle install
Fetching gem metadata from https://rubygems.org/............
Resolving dependencies...
...
Using jekyll 4.2.2
Using jekyll-feed 0.16.0
Using jekyll-seo-tag 2.8.0
Using just-the-docs 0.3.3
Bundle complete! 7 Gemfile dependencies, 32 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.

$ bundle exec jekyll serve
Configuration file: .../just-the-docs-tests/_config.yml
            Source: .../just-the-docs-tests
       Destination: .../just-the-docs-tests/_site
 Incremental build: disabled. Enable with --incremental
      Generating... 
       Jekyll Feed: Generating feed for posts
     Build Warning: Layout 'post' requested in _posts/2022-07-14-welcome-to-jekyll.markdown does not exist.
     Build Warning: Layout 'default' requested in 404.html does not exist.
     Build Warning: Layout 'page' requested in about.markdown does not exist.
     Build Warning: Layout 'home' requested in index.markdown does not exist.
     Build Warning: Layout 'default' requested in index.md does not exist.
          Conflict: The following destination is shared by multiple files.
                    The written file may end up with unexpected contents.
                    .../just-the-docs-tests/_site/index.html
                     - index.markdown
                     - index.md
                    
                    done in 0.692 seconds.
 Auto-regeneration: enabled for '.../just-the-docs-tests'
    Server address: http://127.0.0.1:4000
  Server running... press ctrl-c to stop.
```

In `Gemfile` replace:

```ruby
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
end
```

by:

```ruby
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem "jekyll-remote-theme"
  gem "jekyll-seo-tag"
  gem "rake"
end
```

Now try again locally:

```shell
$ bundle install
Fetching gem metadata from https://rubygems.org/...........
Resolving dependencies...
Using rake 13.0.6
Using public_suffix 4.0.7
Using colorator 1.1.0
Using bundler 2.3.17
Using http_parser.rb 0.8.0
Using eventmachine 1.2.7
Using rb-fsevent 0.11.1
Using ffi 1.15.5
Using liquid 4.0.3
Using forwardable-extended 2.6.0
Using rexml 3.2.5
Using concurrent-ruby 1.1.10
Using mercenary 0.4.0
Using rouge 3.29.0
Using safe_yaml 1.0.5
Using unicode-display_width 1.8.0
Using sassc 2.4.0
Using rubyzip 2.3.2
Using pathutil 0.16.2
Using addressable 2.8.0
Using rb-inotify 0.10.1
Using em-websocket 0.5.3
Using jekyll-sass-converter 2.2.0
Using i18n 1.12.0
Using listen 3.7.1
Using terminal-table 2.0.0
Using kramdown 2.4.0
Using jekyll-watch 2.2.1
Using kramdown-parser-gfm 1.1.0
Using jekyll 4.2.2
Using jekyll-feed 0.16.0
Using jekyll-remote-theme 0.4.3
Using jekyll-seo-tag 2.8.0
Bundle complete! 9 Gemfile dependencies, 33 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.

$ bundle exec jekyll serve
Configuration file: .../just-the-docs-tests/_config.yml
      Remote Theme: Using theme just-the-docs/just-the-docs
            Source: .../just-the-docs-tests
       Destination: .../just-the-docs-tests/_site
 Incremental build: disabled. Enable with --incremental
      Generating... 
      Remote Theme: Using theme just-the-docs/just-the-docs
       Jekyll Feed: Generating feed for posts
          Conflict: The following destination is shared by multiple files.
                    The written file may end up with unexpected contents.
                    .../just-the-docs-tests/_site/index.html
                     - index.markdown
                     - index.md
                    
                    done in 0.762 seconds.
 Auto-regeneration: enabled for '.../just-the-docs-tests'
    Server address: http://127.0.0.1:4000
  Server running... press ctrl-c to stop.
```

- Delete `index.markdown` to resolve the reported conflict.
- Delete `about.markdown`, which is about the Jekyll default theme.
- Ignore (or delete) `_posts/2022-07-14-welcome-to-jekyll.markdown`.

Just the Docs Tests now builds as desired locally, with this single page as `Home`!

Commit the changes to the repository on GitHub.

GitHub Pages now builds the site successfully!

Question:

> Is there a simpler way to configure a site using Just the Docs
> so that it builds both locally _and_ on GitHub Pages?

Answer:

> Yes: use a template!
