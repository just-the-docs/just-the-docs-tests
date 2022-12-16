---
title: Reversed Order
nav_order: Tests Reversed Order
has_children: true
child_nav_order: desc
---

# Reversed Order

When `nav_order` fields are integers, the pages are ordered in increasing order of the numerical values,
but in reverse order when the front matter includes `child_nav_order: reversed`.
(`child_nav_order: desc` was originally used to suggest _descending_ order, but that is now deprecated.)


1.  Check that the titles of the children of this page are shown in the order:
    
    ```
    10
    2
    0
    -1
    ```
    
    both in the navigation panel and in the table of contents below.

1.  Check that the titles of the children of the [Reversed child page](../reversed/index)
    are shown in the _same_ order.
 
1.  Check that the titles of the children of the [Descending child page](../desc/index)
    are shown in the _same_ order.
 
1.  Check that the titles of the children of the [Forward child page](../forward/index)
    are shown in the _opposite_ order.
   
