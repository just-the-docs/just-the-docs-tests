---
title: Home
layout: default
---

# Tests for Just the Docs

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
