---
title: Navigation exclusion
---

# Navigation exclusion

1.  Check that this [excluded and titled 404 page](/404)
    does not appear in the navigation panel.

1.  Check that this [untitled page](../untitled/) does appear in the navigation panel,
    because untitled pages in collections get default titles.[^1]

1.  Check that this [excluded and untitled page](../excluded-untitled/) does not appear in the navigation panel.

1.  Check that this excluded [top level](../excluded/),
    [child](../excluded-child/), and
    [grandchild](../excluded-grandchild/) page does not appear in the navigation panel.

1.  Check that this non-excluded [top level page](../non-excluded/) appears;
    and that this non-excluded [child page](../non-excluded-child/) or 
    [grandchild page](../non-excluded-grandchild/) appears when its parent appears.

1.  Check that this non-excluded [child page](../non-excluded-child-of-excluded/) and 
    [grandchild page](../non-excluded-grandchild-of-excluded/) does not appear when its parent is excluded.

1.  Check that ordinary pages do not become excluded when a collection is added.
    For example, the navigation panel of this site should start with a link to
    [Home](/).

----

[^1]: The default title in a collection is based on the file name, but 
    [this is undocumented](https://talk.jekyllrb.com/t/jekyll-collection-title-where-is-it-documented/6578).
