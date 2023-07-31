---
title: Mixture
parent: Order
nav_order: 5
has_children: true
---

# Mixed Order

It seems unlikely that different types of `nav_order` values are needed for the children of the same parent.

1.  Check that the titles of the children of this page are shown in the order:[^1]
    ```
    -1.1
    -1
    0.0
    0
    2.2222
    10.0
    Aa
    aa
    2
    10
    A
    ```
    
----

[^1]: When using Jekyll 3.9, the string `"10"` comes before `"2"`.
