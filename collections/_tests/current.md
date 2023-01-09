---
title: Current tests
---
# Current tests

Below, a ✅ before a PR summary line indicates that:

- the link to the title of the PR leads to a page of tests of its observational effect, and
- the tests succeed in the pre-release.

The absence of a ✅ below indicates that although the PR has been reviewed and merged,
tests for it are not yet included on this site.

{: .note }
Changes to the theme docs website should be tested for _accuracy_.
Such docs tests have _not_ yet been added!

# Version 0.4.0 (DRAFT)

{: .warning }
Checking the regression tests listed below is **work in progress**.

## HEAD

- Pending: [integrates custom scss & callouts] by [@Ethan0429] in [#1013]

[integrates custom scss & callouts]: /collections/_customization/custom-callout-color.md

## Pre-release v0.4.0.rc4

### New Features

- ✅ Added: [support multiple Google Analytics tracking IDs, document UA -> GA4 switch] by [@MichelleBlanchette] in [#1029]
- Added: [copy code button to code snippets] by [@simonebortolin] in [#945]
- ✅ Added: [restore simple configuration of `favicon.ico` via `site.static_files`] by [@pdmosses] in [#1095]
- Added: [modularize site components] by [@mattxwang] in [#1058]

### Bugfixes and Maintenance

- ✅ Fixed: [incorrect disambiguation in generated TOCs] by [@pdmosses] in [#999]
- ✅ Fixed: [duplicated external links in collections] by [@pdmosses] in [#1001]
- ✅ Fixed: [import order of `custom.scss`; puts at end] by [@deseo] in [#1010]
- ✅ Fixed: [top-level active link styling] by [@pdmosses] in [#1015]
- ✅ Fixed: [external links for sites with no pages] by [@pdmosses] in [#1021]
- ✅ Fixed: [duplicate `title` if `jekyll-seo-tag` not in users's plugins] by [@Tom-Brouwer] in [#1040]
- ✅ Fixed: [removes (duplicate) `favicon.html`, shifts content to `head_custom.html`] by [@mattxwang] in [#1027]
- ✅ Fixed: [add `reversed`, deprecate `desc` for nav `child_nav_order`] by [@jmertic] in [#1061]
- ✅ Fixed: [`child.child_nav_order` to `node.child_nav_order`] by [@mattxwang] in [#1065]
- Fixed: [remove all uses of `/` as SASS division] by [@mattxwang] in [#1074][^1074]
- ✅ Fixed: [skip nav collection generation when site has no pages] by [@pdmosses] in [#1092]
- Fixed: [standardize SCSS with `declaration-block-no-redundant-longhand-properties`] by [@simonebortolin] in [#1102]
- Fixed: [incorrect `padding` property value pair in `labels.scss`] by [@SConaway] in [#1104]
- Fixed: [various bugs with copy code button] by [@simonebortolin] in [#1096]
- Fixed: [replace inline styling for `<svg>` icons] by [@captn3m0] in [#1110]
- ✅ Vendor: [update `jekyll-anchor-headings`, `lunr.js`] by [@mattxwang] in [#1071]

### Docs

- Docs: fix typo in changelog links [@koppor] in [#1000]
- Docs: update homepage (focus: new features, conciseness, deduplication) by [@pdmosses] in [#1018]
- Docs: update README (focus: new features, conciseness, deduplication) by [@pdmosses] in [#1019]
- Docs: fix two bugs in "Customization" (custom favicon, new annotation) by [@mattxwang] in [#1090]
- Docs: Add warning about mandatory _-prefix for collections by [@max06] in [#1091]

[^1074]: 
    This fix was originally merged as [#1074] with a bug;
    it was reverted in [#1076], and then reimplemented in [#1077].

[#945]: https://github.com/just-the-docs/just-the-docs/pull/945
[#999]: https://github.com/just-the-docs/just-the-docs/pull/999
[#1000]: https://github.com/just-the-docs/just-the-docs/pull/1000
[#1001]: https://github.com/just-the-docs/just-the-docs/pull/1001
[#1010]: https://github.com/just-the-docs/just-the-docs/pull/1010
[#1015]: https://github.com/just-the-docs/just-the-docs/pull/1015
[#1018]: https://github.com/just-the-docs/just-the-docs/pull/1018
[#1019]: https://github.com/just-the-docs/just-the-docs/pull/1019
[#1021]: https://github.com/just-the-docs/just-the-docs/pull/1021
[#1027]: https://github.com/just-the-docs/just-the-docs/pull/1027
[#1029]: https://github.com/just-the-docs/just-the-docs/pull/1029
[#1040]: https://github.com/just-the-docs/just-the-docs/pull/1040
[#1058]: https://github.com/just-the-docs/just-the-docs/pull/1058
[#1061]: https://github.com/just-the-docs/just-the-docs/pull/1061
[#1065]: https://github.com/just-the-docs/just-the-docs/pull/1065
[#1071]: https://github.com/just-the-docs/just-the-docs/pull/1071
[#1074]: https://github.com/just-the-docs/just-the-docs/pull/1074
[#1076]: https://github.com/just-the-docs/just-the-docs/pull/1076
[#1077]: https://github.com/just-the-docs/just-the-docs/pull/1077
[#1090]: https://github.com/just-the-docs/just-the-docs/pull/1090
[#1091]: https://github.com/just-the-docs/just-the-docs/pull/1091
[#1092]: https://github.com/just-the-docs/just-the-docs/pull/1092
[#1095]: https://github.com/just-the-docs/just-the-docs/pull/1095
[#1096]: https://github.com/just-the-docs/just-the-docs/pull/1096
[#1102]: https://github.com/just-the-docs/just-the-docs/pull/1102
[#1104]: https://github.com/just-the-docs/just-the-docs/pull/1104
[#1110]: https://github.com/just-the-docs/just-the-docs/pull/1110
[#1113]: https://github.com/just-the-docs/just-the-docs/pull/1113

[@captn3m0]: https://github.com/captn3m0
[@deseo]: https://github.com/deseo
[@koppor]: https://github.com/koppor
[@MichelleBlanchette]: https://github.com/MichelleBlanchette
[@simonebortolin]: https://github.com/simonebortolin
[@SConaway]: https://github.com/SConaway
[@Tom-Brouwer]: https://github.com/Tom-Brouwer

[support multiple Google Analytics tracking IDs, document UA -> GA4 switch]: /collections/_customization/ga-tags.md
[copy code button to code snippets]:                                      /collections/_styling/copy-code.md
[restore simple configuration of `favicon.ico` via `site.static_files`]:  /collections/_customization/favicon.md

{% comment %}
[modularize site components]: 
{% endcomment %}

[incorrect disambiguation in generated TOCs]:                             /collections/_navigation/grandparent/index.md
[duplicated external links in collections]:                               /collections/_navigation/collections.md
[import order of `custom.scss`; puts at end]:                             /collections/_styling/custom-import.md
[top-level active link styling]:                                          /collections/_navigation/grandparent/index/#a-grandchild-with-the-same-parent-title-as-a-child-or-top-level-page.md
[external links for sites with no pages]:                                  /collections/_navigation/external-links.md
[duplicate `title` if `jekyll-seo-tag` not in users's plugins]:            /collections/_customization/seo-tag.md
[removes (duplicate) `favicon.html`, shifts content to `head_custom.html]: /collections/_customization/head-favicons.md
[add `reversed`, deprecate `desc` for nav `child_nav_order`]:              /collections/_navigation/reversed/index.md
[`child.child_nav_order` to `node.child_nav_order`]:                       /collections/_navigation/reversed/index.md
[remove all uses of `/` as SASS division]:                                 /collections/_styling/deprecations.md
[skip nav collection generation when site has no pages]:                   /collections/_navigation/empty-collections.md

{% comment %}
[standardize SCSS with `declaration-block-no-redundant-longhand-properties`]: 
[incorrect `padding` property value pair in `labels.scss`]:
{% endcomment %}

[various bugs with copy code button]:                                      /collections/_styling/copy-code.md

{% comment %}
[replace inline styling for `<svg>` icons]:
{% endcomment %}

[update `jekyll-anchor-headings`, `lunr.js`]:                              /collections/_theme-repository/vendor.md

## Pre-release v0.4.0.rc3

## Features

- ✅ Added: [styling for `<blockquote>`] by [@mattxwang] in [#965]
- ✅ Added: [custom include for TOC heading] by [@pdmosses] in [#980]

## Bugfixes and Experimental Features

- ✅ Added: [experimental nav optimization for simple cases] by [@pdmosses] in [#992]
- ✅ Fixed: [spacing issue when search is disabled] by [@henryiii] in [#960]
- ✅ Fixed: [active grandchild link class] by [@pdmosses] in [#962]
- ✅ Fixed: [HTML validation issues (W3C validator)] by [@mattxwang] in [#964]
- ✅ Fixed: [link styling now uses `text-decoration` values] by [@mattxwang] in [#967]
- ✅ Fixed: [cleaning up Jekyll excludes] by [@pdmosses] in [#985]
- ✅ Fixed: [docs, narrow styling for code highlighting with line numbers] by [@pdmosses] in [#974]
- ✅ Fixed: [default syntax highlighting in custom color schemes] by [@pdmosses] in [#986]

[#965]: https://github.com/just-the-docs/just-the-docs/pull/965
[#960]: https://github.com/just-the-docs/just-the-docs/pull/960
[#962]: https://github.com/just-the-docs/just-the-docs/pull/962
[#964]: https://github.com/just-the-docs/just-the-docs/pull/964
[#967]: https://github.com/just-the-docs/just-the-docs/pull/967
[#974]: https://github.com/just-the-docs/just-the-docs/pull/974
[#980]: https://github.com/just-the-docs/just-the-docs/pull/980
[#985]: https://github.com/just-the-docs/just-the-docs/pull/985
[#986]: https://github.com/just-the-docs/just-the-docs/pull/986
[#992]: https://github.com/just-the-docs/just-the-docs/pull/992

[@henryiii]: https://github.com/henryiii

[styling for `<blockquote>`]:                     /collections/_styling/block-quote.md
[custom include for TOC heading]:                 /collections/_customization/toc-heading.md
[spacing issue when search is disabled]:          /collections/_styling/disabled-search.md
[experimental nav optimization for simple cases]: /collections/_navigation/optimization.md
[active grandchild link class]:                   /collections/_navigation/active-grandchild.md
[HTML validation issues (W3C validator)]:         /collections/_theme-repository/validation.md
[link styling now uses `text-decoration` values]: /collections/_styling/links.md
[cleaning up Jekyll excludes]:                    /collections/_theme-repository/compression.md
[docs, narrow styling for code highlighting with line numbers]: /collections/_styling/narrow-code.md
[default syntax highlighting in custom color schemes]: /collections/_color/code.md

## Pre-release v0.4.0.rc2

### Features

- ✅ Added: [accessible titles to nested page nav toggle] by [@JPrevost] in [#950]
- ✅ Added: [better title styling for AsciiDoc examples] by [@alyssais] in [#944]
- ✅ Added: [provide ability to skip to main content] by [@JPrevost] in [#949]
- ✅ Fixed: [exclude `vendor/` in Jekyll config] by [@manuelhenke] in [#941]
- ✅ Fixed: [improve build time of navigation panel] by [@pdmosses] in [#956]

[#950]: https://github.com/just-the-docs/just-the-docs/pull/950
[#944]: https://github.com/just-the-docs/just-the-docs/pull/944
[#939]: https://github.com/just-the-docs/just-the-docs/pull/939
[#949]: https://github.com/just-the-docs/just-the-docs/pull/949
[#941]: https://github.com/just-the-docs/just-the-docs/pull/941
[#956]: https://github.com/just-the-docs/just-the-docs/pull/956

[@alyssais]: https://github.com/alyssais

[accessible titles to nested page nav toggle]: /collections/_accessibility/nav-toggle.md
[better title styling for AsciiDoc examples]:  /collections/_styling/asciidoc.md
[provide ability to skip to main content]:     /collections/_accessibility/skip-to-main-content.md
[exclude `vendor/` in Jekyll config]:          /collections/_theme-repository/compression.md
[improve build time of navigation panel]:      /collections/_navigation/optimization-outdated.md

### Documentation and Maintenance

- Added: docs load mermaid.js by default by [@mattxwang] in [#935]
- Added: docs for custom search placeholder by [@mattxwang] in [#939]
- Fixed: table of contents on search docs by [@robinpokorny] in [#940]
- Fixed: broken docs link (custom footer) by [@olgarithms] in [#951]
- Fixed: clarify version docs by [@pdmosses] in [#955]
- Deleted: unused script directory by [@mattxwang] in [#937]

[#935]: https://github.com/just-the-docs/just-the-docs/pull/935
[#940]: https://github.com/just-the-docs/just-the-docs/pull/940
[#951]: https://github.com/just-the-docs/just-the-docs/pull/951
[#955]: https://github.com/just-the-docs/just-the-docs/pull/955
[#937]: https://github.com/just-the-docs/just-the-docs/pull/937

[@robinpokorny]: https://github.com/robinpokorny
[@olgarithms]: https://github.com/olgarithms
[@manuelhenke]: https://github.com/manuelhenke
[@JPrevost]: https://github.com/JPrevost

## Pre-release v0.4.0.rc1

[@mattxwang]: https://github.com/mattxwang
[@pdmosses]: https://github.com/pdmosses
[@skullface]: https://github.com/skullface
[@dougaitken]: https://github.com/dougaitken
[@max06]: https://github.com/max06

### Features

* Added: Combination by [@pdmosses] in [#578]
  - ✅ Added: [dark highlighting] in [#463]
  - ✅ Added: [pages and collections] in [#448]
  - ✅ Added: [callouts] in [#466]
  - ✅ Fixed: [breadcrumb behaviour …] by [@AdityaTiwari2102] in [#477]
  - ✅ Fixed: [prevent rake command corrupting search data] in [#495] (also listed below)
  - ✅ Fixed: [nested lists] in [#496]
  - ✅ Fixed: [set color for search input] in [#498] (also listed below)
  - ✅ Fixed: [sites with no child pages] (no PR)
  - ✅ Fixed: [TOC/breadcrumbs for multiple collections] in [#494]
  - ✅ Added: [collection configuration option `nav_fold`] (no PR)
  - ✅ Fixed: [indentation and color for folded collection navigation] (no PR)
  - ✅ Fixed: [scroll navigation to show the link to the current page] in [#639]
  - ✅ Fixed: [Replace all uses of `absolute_url` by `relative_url`], by [@svrooij] in [#544]
* Added: custom favicon `_includes` by [@burner1024] in [#364]
* ✅ Added: [set color for search input] by [@pdmosses] in [#498]
* ✅ Added: [search placeholder configuration] by [@mattxwang] in [#613]
* ✅ Added: [`child_nav_order` front matter to sort navigation pages in reverse] by [@jmertic] in [#726]
* ✅ Added: [`nav_footer_custom` include] by [@nathanjessen] in [#474]
* ✅ Added: [style fixes for jekyll-asciidoc] by [@alyssais] in [#829]
* ✅ Added: [mermaid.js support] by [@nascosto] in [#857]
* ✅ Added: [support for external navigation links] by [@SPGoding] in [#876]
* ✅ Added: [refactor `mermaid` config to use `mermaid_config.js` include, only require `mermaid.version`] in `_config.yml` by [@mattxwang] in [#909]
* ✅ Fixed: [prepend `site.collections_dir` if exists] by [@alexsegura] in [#519]
* ✅ Fixed: [nested task lists] (#517) by [@pdmosses] in [#855]
* ✅ Fixed: [suppress Liquid processing in CSS comments] by [@pdmosses] in [#686]
* ✅ Fixed: [prevent rake command corrupting search data] by [@pdmosses] in [#495]
* ✅ Fixed: [anchor heading links should be visible on focus] by [@jacobhq] in [#846]
* ✅ Fixed: [add `overflow-x: auto` to `figure.highlight`] by [@iridazzle] in [#727]
* ✅ Fixed: [add `overflow-wrap: word-break` to `body`] by [@iridazzle] in [#889]
* ✅ Fixed: [vertical alignment for consecutive labels] by [@Eisverygoodletter] in [#893]
* ✅ Fixed: [allow links to wrap] by [@pdmosses] in [#905]
* ✅ Fixed: [nav scroll feature and absolute/relative URLs] by [@pdmosses] in [#898]

[#578]: https://github.com/just-the-docs/just-the-docs/pull/578
[#463]: https://github.com/just-the-docs/just-the-docs/pull/463
[#448]: https://github.com/just-the-docs/just-the-docs/pull/448
[#466]: https://github.com/just-the-docs/just-the-docs/pull/466
[#477]: https://github.com/just-the-docs/just-the-docs/pull/477
[#495]: https://github.com/just-the-docs/just-the-docs/pull/495
[#496]: https://github.com/just-the-docs/just-the-docs/pull/496
[#498]: https://github.com/just-the-docs/just-the-docs/pull/498
[#494]: https://github.com/just-the-docs/just-the-docs/pull/494
[#639]: https://github.com/just-the-docs/just-the-docs/pull/639
[#544]: https://github.com/just-the-docs/just-the-docs/pull/544
[#364]: https://github.com/just-the-docs/just-the-docs/pull/364
[#498]: https://github.com/just-the-docs/just-the-docs/pull/498
[#613]: https://github.com/just-the-docs/just-the-docs/pull/613
[#726]: https://github.com/just-the-docs/just-the-docs/pull/726
[#474]: https://github.com/just-the-docs/just-the-docs/pull/474
[#829]: https://github.com/just-the-docs/just-the-docs/pull/829
[#857]: https://github.com/just-the-docs/just-the-docs/pull/857
[#876]: https://github.com/just-the-docs/just-the-docs/pull/876
[#909]: https://github.com/just-the-docs/just-the-docs/pull/909
[#519]: https://github.com/just-the-docs/just-the-docs/pull/519
[#855]: https://github.com/just-the-docs/just-the-docs/pull/855
[#686]: https://github.com/just-the-docs/just-the-docs/pull/686
[#495]: https://github.com/just-the-docs/just-the-docs/pull/495
[#846]: https://github.com/just-the-docs/just-the-docs/pull/846
[#727]: https://github.com/just-the-docs/just-the-docs/pull/727
[#889]: https://github.com/just-the-docs/just-the-docs/pull/889
[#893]: https://github.com/just-the-docs/just-the-docs/pull/893
[#905]: https://github.com/just-the-docs/just-the-docs/pull/905
[#898]: https://github.com/just-the-docs/just-the-docs/pull/898

### Documentation

* Added: docs on how to break an `ol` by [@pdmosses] in [#856]
* Added: docs for custom includes by [@nathanjessen] in [#806]
* Added: document caveat about variable dependencies by [@waldyrious] in [#555]
* Added: docs on how to use `custom_head` to add a custom favicon by [@UnclassedPenguin] in [#814]
* Fixed: `ol` on `index.md` by [@pmarsceill] in [#778]
* Fixed: image link in Markdown kitchen sink by [@JeffGuKang] in [#221]
* Fixed: images in Markdown kitchen sink by [@dougaitken] in [#782]
* Fixed: clearer label of link to Jekyll quickstart by [@waldyrious] in [#549]
* Fixed: remove extra spaces in component docs by [@MichelleBlanchette] in [#554]
* Fixed: double "your" typo in `index.md` by [@sehilyi] in [#499]
* Fixed: "you" -> "your" typo in `index.md` by [@nathanjessen] in [#473]
* Fixed: spacing in toc example by [@henryiii] in [#835]
* Fixed: typo in `README` on `_config.yml` by [@ivanskodje] in [#891]
* Fixed: missing code fence in navigation structure docs by [@mattxwang] in [#906]

[#856]: https://github.com/just-the-docs/just-the-docs/pull/856
[#806]: https://github.com/just-the-docs/just-the-docs/pull/806
[#555]: https://github.com/just-the-docs/just-the-docs/pull/555
[#814]: https://github.com/just-the-docs/just-the-docs/pull/814
[#778]: https://github.com/just-the-docs/just-the-docs/pull/778
[#221]: https://github.com/just-the-docs/just-the-docs/pull/221
[#782]: https://github.com/just-the-docs/just-the-docs/pull/782
[#549]: https://github.com/just-the-docs/just-the-docs/pull/549
[#554]: https://github.com/just-the-docs/just-the-docs/pull/554
[#499]: https://github.com/just-the-docs/just-the-docs/pull/499
[#473]: https://github.com/just-the-docs/just-the-docs/pull/473
[#835]: https://github.com/just-the-docs/just-the-docs/pull/835
[#891]: https://github.com/just-the-docs/just-the-docs/pull/891
[#906]: https://github.com/just-the-docs/just-the-docs/pull/906

### Maintenance

* Added: VScode devcontainer by [@max06] in [#783]
* Added: `webrick` to `Gemfile` by [@mattxwang] in [#799]
* Added: 'This site is powered by Netlify.' to the footer by [@mattxwang] in [#797]
* Updated: new repo path by [@pmarsceill] in [#775]
* Updated: rename `master` -> `main` by [@pmarsceill] in [#776]
* Updated: README by [@pmarsceill] in [#777]
* Updated: Code of Conduct to Contributor Covenant v2.1 by [@mattxwang] in [#790]
* Updated: CI files, Ruby & Node Versions by [@mattxwang] in [#820]
* Updated: Stylelint to v14, extend SCSS plugins, remove primer-* configs, resolve issues by [@mattxwang] in [#821]

[#783]: https://github.com/just-the-docs/just-the-docs/pull/783
[#799]: https://github.com/just-the-docs/just-the-docs/pull/799
[#797]: https://github.com/just-the-docs/just-the-docs/pull/797
[#775]: https://github.com/just-the-docs/just-the-docs/pull/775
[#776]: https://github.com/just-the-docs/just-the-docs/pull/776
[#777]: https://github.com/just-the-docs/just-the-docs/pull/777
[#790]: https://github.com/just-the-docs/just-the-docs/pull/790
[#820]: https://github.com/just-the-docs/just-the-docs/pull/820
[#821]: https://github.com/just-the-docs/just-the-docs/pull/821

[dark highlighting]:                                      /collections/_color/code.md
[pages and collections]:                                  /collections/_navigation/collections.md
[callouts]:                                               /collections/_components/callouts.md
[breadcrumb behaviour …]:                                 /collections/_navigation/grandparent/index.md
[prevent rake command corrupting search data]:            /collections/_search/rake.md
[nested lists]:                                           /collections/_styling/nested.md
[set color for search input]:                             /collections/_color/input.md
[search placeholder configuration]:                       /collections/_customization/search-placeholder.md
[sites with no child pages]:                              /collections/_navigation/top-level.md
[TOC/breadcrumbs for multiple collections]:               /collections/_navigation/grandparent/index.md
[collection configuration option `nav_fold`]:             /collections/_navigation/expanders.md
[indentation and color for folded collection navigation]: /collections/_navigation/collections.md
[scroll navigation to show the link to the current page]: /collections/_navigation/scroll.md
[replace all uses of `absolute_url` by `relative_url`]:   /collections/_navigation/relative-url.md
[`child_nav_order` front matter to sort navigation pages in reverse]: /collections/_navigation/reversed/index.md
[`nav_footer_custom` include]:                            /collections/_customization/nav-footer.md
[style fixes for jekyll-asciidoc]:                        /collections/_styling/asciidoc.md
[mermaid.js support]:                                     /collections/_components/mermaid.md
[support for external navigation links]:                  /collections/_navigation/external-links.md
[refactor `mermaid` config to use `mermaid_config.js` include, only require `mermaid.version`]: /collections/_components/mermaid.md
[prepend `site.collections_dir` if exists]:               /collections/_navigation/collections.md
[nested task lists]:                                      /collections/_styling/nested.md
[suppress Liquid processing in CSS comments]:             /collections/_styling/maps.md
[anchor heading links should be visible on focus]:        /collections/_accessibility/heading-links.md
[add `overflow-x: auto` to `figure.highlight`]:           /collections/_styling/code-overflow.md
[add `overflow-wrap: word-break` to `body`]:              /collections/_styling/body-overflow.md
[vertical alignment for consecutive labels]:              /collections/_styling/label-alignment.md
[allow links to wrap]:                                    /collections/_styling/links.md
[nav scroll feature and absolute/relative URLs]:          /collections/_navigation/scroll.md

{% include tests.md %}

### Dependencies

* Upgrade to GitHub-native Dependabot by @dependabot-preview in [#627]
* [Security] Bump y18n from 3.2.1 to 3.2.2 by @dependabot-preview in [#606]
* [Security] Bump hosted-git-info from 2.7.1 to 2.8.9 by @dependabot-preview in [#641]
* [Security] Bump lodash from 4.17.19 to 4.17.21 by @dependabot-preview in [#640]
* [Security] Bump ini from 1.3.5 to 1.3.8 by @dependabot-preview in [#511]
* Bump path-parse from 1.0.6 to 1.0.7 by @dependabot in [#699]
* Bump ajv from 6.10.0 to 6.12.6 by @dependabot in [#766]
* Bump prettier from 2.1.2 to 2.5.1 by @dependabot in [#787]
* Bump prettier from 2.5.1 to 2.6.2 by @dependabot in [#809]
* Bump prettier from 2.6.2 to 2.7.1 by @dependabot in [#864]

[#627]: https://github.com/just-the-docs/just-the-docs/pull/627
[#606]: https://github.com/just-the-docs/just-the-docs/pull/606
[#641]: https://github.com/just-the-docs/just-the-docs/pull/641
[#640]: https://github.com/just-the-docs/just-the-docs/pull/640
[#511]: https://github.com/just-the-docs/just-the-docs/pull/511
[#699]: https://github.com/just-the-docs/just-the-docs/pull/699
[#766]: https://github.com/just-the-docs/just-the-docs/pull/766
[#787]: https://github.com/just-the-docs/just-the-docs/pull/787
[#809]: https://github.com/just-the-docs/just-the-docs/pull/809
[#864]: https://github.com/just-the-docs/just-the-docs/pull/864

[@AdityaTiwari2102]: https://github.com/AdityaTiwari2102
[@svrooij]: https://github.com/svrooij
[@alexsegura]: https://github.com/alexsegura
[@burner1024]: https://github.com/burner1024
[@JeffGuKang]: https://github.com/JeffGuKang
[@dougaitken]: https://github.com/dougaitken
[@max06]: https://github.com/max06
[@sehilyi]: https://github.com/sehilyi
[@nathanjessen]: https://github.com/nathanjessen
[@waldyrious]: https://github.com/waldyrious
[@MichelleBlanchette]: https://github.com/MichelleBlanchette
[@henryiii]: https://github.com/henryiii
[@jmertic]: https://github.com/jmertic
[@jacobhq]: https://github.com/jacobhq
[@UnclassedPenguin]: https://github.com/UnclassedPenguin
[@alyssais]: https://github.com/alyssais
[@nascosto]: https://github.com/nascosto
[@SPGoding]: https://github.com/SPGoding
[@iridazzle]: https://github.com/iridazzle
[@ivanskodje]: https://github.com/ivanskodje
[@Eisverygoodletter]: https://github.com/Eisverygoodletter

{% include tests.md %}

----
