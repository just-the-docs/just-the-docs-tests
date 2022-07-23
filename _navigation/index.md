---
title: About Navigation Tests
---

# About Navigation Tests

- The [exclusion](exclude) tests check for exclusion of pages at different levels.

- The [grandparent](grandparent) tests check whether the `parent` and
  `grand_parent` (sic) fields correctly disambiguate the navigation panel
  and the breadcrumbs.

- The [navigation order](order/order.html) tests check whether the `nav_order`
  field produces the intended sequencing of links in the navigation panel and
  tables of contents.
  The tests also check the default order produced when omitting the `nav_order`.

- The [relative URL](relative-url.html) test checks whether the URLs in
  navigation links are relative
  (which is needed for deployment of builds that are not using GitHub Pages).
  
- The navigation panel [scroll](scroll.html) test checks whether the navigation
  panel automatically scrolls so that the link to the selected page is visible.
