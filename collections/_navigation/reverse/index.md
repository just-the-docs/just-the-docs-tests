---
title: Reverse Order
nav_order: Tests Reverse Order
has_children: true
child_nav_order: desc
---

# Reverse Order

When `nav_order` fields are integers, the pages are ordered in increasing order of the numerical values,
but in reverse order when the front matter includes `child_nav_order: desc`.


1.  ✅ Check that the titles of the children of this page are shown in the order:
    
    ```
    10
    2
    0
    -1
    ```
    
    both in the navigation panel and in the table of contents below.

1.  ✅ Check that the titles of the children of the [Reverse child page](../reverse/index)
    are shown in the _same_ order.
 
1.  ✅ Check that the titles of the children of the [Forward child page](../forward/index)
    are shown in the _opposite_ order.
   
