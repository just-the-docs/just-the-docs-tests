---
title: Build time
parent: Optimization
---

# Build time
{: .no_toc }

## Website build profiles
{: .no_toc .text-delta }

1. TOC
{:toc}

{::options toc_levels="2" /}

For small sites, the build time should be only a few seconds.
For larger sites, it can be annoyingly long: several minutes or more.
This may be partly due to inefficiency of Jekyll 3,[^jekyll-4]
or of the Liquid code that builds the navigation panel when using Just the Docs.

[^jekyll-4]: Just the Docs does not yet support use of Jekyll 4.
  Using Jekyll 4 locally to test a site may give (slightly) different results
  from the default Jekyll 3 build on GitHub, but it is significantly faster.

However, the HTML of a typical Just the Docs site with hundreds of pages
in the navigation seems to be necessarily large:
the expanders on all parent pages support access to all child pages,
so the navigation has to include a link to every included page!
And different pages show different links as active,
so the entire navigation panel can't simply be cached, in general.

The command
`bundle exec jekyll clean; bundle exec jekyll build --profile`
cleans the caches and builds the website,
then outputs a table showing the CPU time spent in the various files,
together with the total build time.

The following tables are extracts from profiles produced by building websites
using clones of public repositories,
using `theme` or `remote_themme` to specify different versions of Just the Docs:
`v0.3.3`, `v0.4.0.rc1`, `v0.4.0.rc2`, and `v0.4.0.rc3`.

The main interest is the time spent in the `_includes/nav.html`,
which generally dominates the time in all the other files.
(The file `_layouts/default.html` includes `nav.html`,
so its time is always higher.)

The navigation code was the same in `v0.3.3` and `v0.4.0.rc1`.
The navigation code in `v0.4.0.rc2` turned out to be more efficient for one large site
(reducing build time from 48 seconds to 9 seconds)
but an order of magnitude slower for another large site
(increasing build time from 313 seconds to 2975 seconds).
The latest version `v0.4.0.rc3` maintains the efficient build of the former site,
and reduces the build time of the latter site to 391 seconds.[^jekyll-4]

The profiling was done a MacBook Air (M2, 2022) running macOS Monterey (12.5).

## Just the Docs

The repository for this website is at <https://github.com/just-the-docs/just-the-docs>.

The website at <https://just-the-docs.github.io/just-the-docs/>:
- has 22 pages
- has a shallow navigation hierarchy, with only one level 3 page
- has 15 `nav_order` values, all integers
- has 5 child pages with no
- has a 404 page with a numerical `title` value
- is built using Jekyll v3.8.7

The Just the Docs theme website is quite small (? pages),
with a modest navigation hierarchy, not using collections.
The pages generally have numerical `nav_order` values,
except for the child pages of `Utilities`,
which are implicitly ordered by their `title` strings.
The 404 page has a numerical title, but is excluded from the navigation.

### v0.3.3 done in 1.991 seconds

<details markdown="block"><summary><span class="text-delta">Profile</span></summary>

Filename                                 | Count |  Bytes  | Time
:----------------------------------------|:------|:--------|:-----
_layouts/default.html                    |    22 | 504.19K | 0.406
_includes/nav.html                       |    22 |  74.65K | 0.229
_layouts/vendor/compress.html            |    22 | 439.00K | 0.143
_includes/vendor/anchor_headings.html    |    22 | 253.50K | 0.054
_includes/head.html                      |    22 |  42.78K | 0.054
assets/js/zzzz-search-data.json          |     1 |  97.09K | 0.041

</details>

### v0.4.0.rc1 done in 1.938 seconds

<details markdown="block"><summary><span class="text-delta">Profile</span></summary>

Filename                                 | Count |  Bytes  | Time
:----------------------------------------|:------|:--------|:-----
_layouts/default.html                    |    22 | 504.19K | 0.400
_includes/nav.html                       |    22 |  74.65K | 0.226
_layouts/vendor/compress.html            |    22 | 439.00K | 0.142
_includes/vendor/anchor_headings.html    |    22 | 253.50K | 0.054
_includes/head.html                      |    22 |  42.78K | 0.053
assets/js/zzzz-search-data.json          |     1 |  97.09K | 0.040

</details>

### v0.4.0.rc2 done in 1.995 seconds

<details markdown="block"><summary><span class="text-delta">Profile</span></summary>

Filename                                 | Count |  Bytes  | Time
:----------------------------------------|:------|:--------|:-----
_layouts/default.html                    |    22 | 504.19K | 0.415
_includes/nav.html                       |    22 |  74.65K | 0.233
_layouts/vendor/compress.html            |    22 | 439.00K | 0.146
_includes/vendor/anchor_headings.html    |    22 | 253.50K | 0.057
_includes/head.html                      |    22 |  42.78K | 0.054
assets/js/zzzz-search-data.json          |     1 |  97.09K | 0.041

</details>

### v0.4.0.rc3 done in 1.945 seconds

<details markdown="block"><summary><span class="text-delta">Profile</span></summary>

Filename                                 | Count |  Bytes  | Time
:----------------------------------------|:------|:--------|:-----
_layouts/default.html                    |    22 | 504.19K | 0.404
_includes/nav.html                       |    22 |  74.65K | 0.233
_layouts/vendor/compress.html            |    22 | 439.00K | 0.149
_includes/vendor/anchor_headings.html    |    22 | 253.50K | 0.057
_includes/head.html                      |    22 |  42.78K | 0.049
assets/js/zzzz-search-data.json          |     1 |  97.09K | 0.040

</details>

## Just the Docs Tests

The repository for this website is at <https://github.com/just-the-docs/just-the-docs-tests>.

The website at <https://just-the-docs.github.io/just-the-docs-tests/>:
- has 110 pages
- has a rich 3-level navigation hierarchy with 43 level 3 pages and 9 collections
- has test pages with numerical, string, and no `nav_order` values
- has an excluded 404 page with a numerical title
- was built using Jekyll v3.8.7

### v0.3.3 done in 16.85 seconds

<details markdown="block"><summary><span class="text-delta">Profile</span></summary>

Filename                                                                          | Count |     Bytes |    Time
:---------------------------------------------------------------------------------|:------|:----------|:-------
_layouts/default.html                                                             |   110 | 3266.93K | 14.218
jekyll-remote-theme-20221010-86351-cvopry/_includes/nav.html                      |   110 | 2183.14K | 13.257
jekyll-remote-theme-20221010-86351-cvopry/_includes/head.html                     |   110 |  190.86K |  0.540
_layouts/vendor/compress.html                                                     |   110 | 2858.39K |  0.209
jekyll-remote-theme-20221010-86351-cvopry/_includes/vendor/anchor_headings.html   |   110 |  191.49K |  0.129
assets/js/zzzz-search-data.json                                                   |     1 |   86.96K |  0.091

</details>

### v0.4.0.rc1 done in 17.689 seconds

<details markdown="block"><summary><span class="text-delta">Profile</span></summary>

Filename                                                                            | Count |     Bytes |    Time
:-----------------------------------------------------------------------------------|:------|:----------|:-------
_layouts/default.html                                                               |   110 | 3193.41K | 14.258
jekyll-remote-theme-20221010-86581-1bvzujk/_includes/nav.html                       |   110 | 1859.26K | 12.847
jekyll-remote-theme-20221010-86581-1bvzujk/_includes/head.html                      |   110 |  201.60K |  0.553
_layouts/vendor/compress.html                                                       |   110 | 2711.24K |  0.213
jekyll-remote-theme-20221010-86581-1bvzujk/_includes/vendor/anchor_headings.html    |   110 |  191.49K |  0.128
assets/js/zzzz-search-data.json                                                     |     1 |   82.27K |  0.061

</details>

### v0.4.0.rc2 done in 22.095 seconds

<details markdown="block"><summary><span class="text-delta">Profile</span></summary>

Filename                                                                           | Count |     Bytes |    Time
:----------------------------------------------------------------------------------|:------|:----------|:-------
_layouts/default.html                                                              |   110 | 3374.24K | 18.984
jekyll-remote-theme-20221010-86786-7mh81d/_includes/nav.html                       |   110 | 2032.36K | 17.646
jekyll-remote-theme-20221010-86786-7mh81d/_includes/head.html                      |   110 |  201.60K |  0.538
_layouts/vendor/compress.html                                                      |   110 | 2828.05K |  0.219
jekyll-remote-theme-20221010-86786-7mh81d/_includes/vendor/anchor_headings.html    |   110 |  191.49K |  0.130
assets/js/zzzz-search-data.json                                                    |     1 |   82.27K |  0.051

</details>

### v0.4.0.rc3 done in 8.414 seconds

<details markdown="block"><summary><span class="text-delta">Profile</span></summary>

Filename                                                                           | Count |     Bytes |    Time
:----------------------------------------------------------------------------------|:------|:----------|:-------
_layouts/default.html                                                              |   110 | 3368.20K | 5.229
jekyll-remote-theme-20221010-86921-slj0jj/_includes/nav.html                       |   110 | 2032.64K | 3.859
jekyll-remote-theme-20221010-86921-slj0jj/_includes/head.html                      |   110 |  196.66K | 0.547
_layouts/vendor/compress.html                                                      |   110 | 2821.46K | 0.217
jekyll-remote-theme-20221010-86921-slj0jj/_includes/vendor/anchor_headings.html    |   110 |  191.49K | 0.126
assets/js/zzzz-search-data.json                                                    |     1 |   82.27K | 0.065

</details>

## endoflife.date

The repository for this website is at <https://github.com/endoflife-date/endoflife.date>.

The website at <https://endoflife.date>:
- has 139 pages
- has a flat navigation hierarchy: *all* pages are top-level
- has no `nav_order` values: *all* pages are ordered by their title strings
- has no 404 page
- was built using Jekyll v4.2.2

In practice, the website reduces the build time to about 7 seconds
using a simplified version of `_includes/nav.html`.
For profiling, that file was removed.

### v0.3.3 TOTAL TIME: 48.6643

<details markdown="block"><summary><span class="text-delta">Profile</span></summary>

| Filename                                                    | Count |     Bytes |   Time |
|:------------------------------------------------------------|:------|:----------|:-------|
| just-the-docs-0.3.3/_layouts/default.html                   |   139 |  4544.87K | 46.608 |
| just-the-docs-0.3.3/_includes/nav.html                      |   139 |  2017.90K | 44.714 |
| just-the-docs-0.3.3/_includes/head.html                     |   139 |   690.52K |  1.811 |
| _includes/head_custom.html                                  |   139 |   488.13K |  0.443 |
| _layouts/product.html                                       |   136 |  1107.56K |  0.430 |
| sitemap.xml                                                 |     1 |    42.39K |  0.263 |
| assets/js/zzzz-search-data.json                             |     1 |   168.11K |  0.061 |

</details>

### v0.4.0.rc1 TOTAL TIME: 48.6768

<details markdown="block"><summary><span class="text-delta">Profile</span></summary>

| Filename                                                         | Count |     Bytes |   Time |
|:-----------------------------------------------------------------|:------|:----------|:-------|
| just-the-docs-0.4.0.rc1/_layouts/default.html                    |   139 |  4217.32K | 46.887 |
| just-the-docs-0.4.0.rc1/_includes/nav.html                       |   139 |  1611.63K | 44.404 |
| just-the-docs-0.4.0.rc1/_includes/head.html                      |   139 |   691.33K |  1.805 |
| _includes/head_custom.html                                       |   139 |   488.13K |  0.433 |
| _layouts/product.html                                            |   136 |  1107.56K |  0.424 |
| sitemap.xml                                                      |     1 |    42.39K |  0.264 |
| assets/js/zzzz-search-data.json                                  |     1 |   163.30K |  0.052 |

</details>

### v0.4.0.rc2 TOTAL TIME: 9.0386 

<details markdown="block"><summary><span class="text-delta">Profile</span></summary>

| Filename                                                         | Count |     Bytes |   Time |
|:-----------------------------------------------------------------|:------|:----------|:-------|
| just-the-docs-0.4.0.rc2/_layouts/default.html                    |   139 |  4227.09K |  7.196 |
| just-the-docs-0.4.0.rc2/_includes/nav.html                       |   139 |  1611.63K |  4.756 |
| just-the-docs-0.4.0.rc2/_includes/head.html                      |   139 |   691.33K |  1.731 |
| _layouts/product.html                                            |   136 |  1107.56K |  0.477 |
| _includes/head_custom.html                                       |   139 |   488.13K |  0.455 |
| sitemap.xml                                                      |     1 |    42.39K |  0.267 |
| assets/js/zzzz-search-data.json                                  |     1 |   163.30K |  0.063 |

</details>

### v0.4.0.rc3 TOTAL TIME: 8.8050

<details markdown="block"><summary><span class="text-delta">Profile</span></summary>

| Filename                                                         | Count |     Bytes |   Time |
|:-----------------------------------------------------------------|:------|:----------|:-------|
| just-the-docs-0.4.0.rc3/_layouts/default.html                    |   139 |  4218.81K |  7.018 |
| just-the-docs-0.4.0.rc3/_includes/nav.html                       |   139 |  1611.63K |  4.625 |
| just-the-docs-0.4.0.rc3/_includes/head.html                      |   139 |   685.09K |  1.718 |
| _includes/head_custom.html                                       |   139 |   488.13K |  0.438 |
| _layouts/product.html                                            |   136 |  1107.56K |  0.428 |
| sitemap.xml                                                      |     1 |    42.39K |  0.265 |
| assets/js/zzzz-search-data.json                                  |     1 |   163.30K |  0.054 |

</details>

## machinetranslate.org

The repository for this website is at <https://github.com/machinetranslate/machinetranslate.org>

The website at <https://machinetranslate.org>:
- has 350 pages, built from 357 source files with titles
- has a rich 3-level navigation hierarchy, with 51 level 3 pages
- has 236 `nav_order` values (234 integers, 2 blank)
- has an excluded 404 page with a string `title` value
- was built using Jekyll v3.9.2

The file `engines/youdao.md` was edited to comment out non-Latin characters in URLs. 

### v0.3.3 done in 286.939 seconds

<details markdown="block"><summary><span class="text-delta">Profile</span></summary>

Filename                                                                          | Count |     Bytes |    Time
:---------------------------------------------------------------------------------|:------|:----------|:-------
_layouts/default.html                                                             |   350 | 19934.53K | 260.383
jekyll-remote-theme-20221010-99410-f0d2i0/_includes/nav.html                      |   350 | 14237.38K | 226.985
_includes/head.html                                                               |   350 |   762.21K |   1.497
assets/js/zzzz-search-data.json                                                   |     1 |   742.95K |   1.023

</details>

### v0.4.0.rc1 done in 313.314 seconds

<details markdown="block"><summary><span class="text-delta">Profile</span></summary>

Filename                                                                         | Count |     Bytes |    Time
:--------------------------------------------------------------------------------|:------|:----------|:-------
_layouts/default.html                                                            |   350 | 17117.10K | 288.068
jekyll-remote-theme-20221010-367-hpbs4l/_includes/nav.html                       |   350 | 11241.54K | 242.392
_includes/head.html                                                              |   350 |   762.21K |   1.429
_layouts/vendor/compress.html                                                    |   350 | 15610.93K |   0.943
assets/js/zzzz-search-data.json                                                  |     1 |   715.56K |   0.864

</details>

### v0.4.0.rc2 done in 2975.7 seconds (!)

<details markdown="block"><summary><span class="text-delta">Profile</span></summary>

Filename                                                                           | Count |     Bytes |    Time
:----------------------------------------------------------------------------------|:------|:----------|:-------
_layouts/default.html                                                              |   350 | 17606.56K | 2949.965
jekyll-remote-theme-20221010-1546-1e05xea/_includes/nav.html                       |   350 | 11706.39K | 2909.030
_includes/head.html                                                                |   350 |   762.21K |    1.430
_layouts/vendor/compress.html                                                      |   350 | 15939.06K |    0.961
assets/js/zzzz-search-data.json                                                    |     1 |   715.56K |    0.892

</details>

### v0.4.0.rc3 done in 391.152 seconds

<details markdown="block"><summary><span class="text-delta">Profile</span></summary>

Filename                                                                         | Count |     Bytes |    Time
:--------------------------------------------------------------------------------|:------|:----------|:-------
_layouts/default.html                                                            |   350 | 17601.79K | 364.902
jekyll-remote-theme-20221010-967-6k2xcb/_includes/nav.html                       |   350 | 11706.72K | 318.016
_includes/head.html                                                              |   350 |   762.21K |   1.502
_layouts/vendor/compress.html                                                    |   350 | 15933.24K |   0.993
assets/js/zzzz-search-data.json                                                  |     1 |   715.56K |   0.907

</details>
