---
title: Strings
parent: Order
nav_order: 2
has_children: true
---

# String Order

By default, all Capital letters come before all lowercase letters; you can add `nav_sort: case_insensitive` in the configuration file to ignore the case).

Digits precede letters, and numeric titles are ordered lexicographically: `"10"` precedes `"2"` (in contrast to explicit numeric `nav_order` values).

1.  Check that the titles of the children of this page are shown in the order:
    ```
    10
    2
    A
    Aa
    aa
    ```
