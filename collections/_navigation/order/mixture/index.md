---
title: Mixture
parent: Order
nav_order: 5
has_children: true
---

# Mixed Order

Mixing different types of `nav_order` values for the children of the same parent may give unexpected results. Moreover, the result of using an integer together with the corresponding float (e.g., `42` and `42.0`) is unstable: the order of the navigation links to those pages [may change at random](https://github.com/just-the-docs/just-the-docs/pull/1397#discussion_r1499879714) when the site is rebuilt.

1.  Check that the titles of the children of this page are shown in the order:[^1]
    ```
    -1.1
    -1
    0
    2.2222
    Aa
    aa
    2
    10
    A
    ```

----

[^1]: When using Jekyll 3.9, the string `"10"` comes before `"2"`.
