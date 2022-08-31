---
title: Mixture
parent: Order
nav_order: 5
has_children: true
---

# Mixed Order

It seems unlikely that different types of `nav_order` values are needed for the children of the same parent.

1.  Check that the titles of the children of this page are shown in the order:
    ```
    -1.1
    -1
    0.0
    0
    2.2222
    10.0
    2
    10
    A
    Aa
    aa
    ```

    {: .note }
    The default order of numeric titles depends on which version of Jekyll is used
    to build the site: 
    the default build on GitHub Pages uses Jekyll 3.9 and gives lexicographic order,
    but when using Jekyll 4, `2` precedes `10`. ❌
