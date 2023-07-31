---
title: Strings
parent: Order
nav_order: 2
has_children: true
---

# String Order

By default, digits precede letters, numeric strings are sorted by value,[^1]
and all Capital letters come before all lowercase letters.

When you add `nav_sort: case_insensitive` in the configuration file, `"aa"` precedes `"B"`,
and numeric strings are ordered lexicographically: `"10"` precedes `"2"`.

1.  Check that `_config.yml` contains:
    ```yaml
    nav_sort: {{ site.nav_sort }}
    ```

1.  Check that the titles of the children of this page are shown in the order:
    ```
    2
    10
    A
    Aa
    B
    aa
    ```

----

[^1]: When using Jekyll 3.9, numeric strings are always sorted lexicographically.
