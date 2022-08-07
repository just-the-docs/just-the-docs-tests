---
title: Parent disambiguation
---

# Parent disambiguation

The `grand_parent` title can be used to disambiguate an ambiguous `parent` title.

## Grandchildren with the same parent title

- The top-level page [A](a.html) has a child [C](ac.html),
  which has a child [D](acd.html).
  
- The top-level page [B](b.html) also has a child [C](bc.html),
  which has a child [D](bcd.html).

- The grandchildren specify their grandparents, 
  which is supposed to disambiguate their parents.

1.  Check that the unfolded navigation panel includes: ✅

    ```
    A
    - C
      - D
    B
    - C
      - D
    ```

1.  Check that the breadcrumbs in the grandchild [D](acd.html) of A include 
    a link to the child [C](ac.html) of A. ✅

1.  Check that the breadcrumbs in the grandchild [D](bcd.html) of B include
    a link to the child [C](bc.html) of B. ✅

## A grandchild with the same parent title as a child or top-level page

- The top-level page [E](e.html) has a child [F](ef.html), 
  which has a child [G](efg.html).

- The top-level page [F](f.html) has a child [G](fg.html)

- The top-level page [G](g.html) has no children.

- The existence of a grandparent for the grandchild [G](efg.html) of [E](e.html)
  is supposed to disambiguates its parent [F](ef.html).

- The existence of a parent for the child [G](fg.html) of top-level [F](f.html) 
  is supposed to disambiguates its parent [F](f.html).

1.  Check that the unfolded navigation panel includes: ✅ 

    ```
    E
    - F
      - G
    F
    - G
    G
    ```

1.  Check that the breadcrumbs in the grandchild [G](efg.html)
    start with a link to its grandparent [E](e.html). ✅

1.  Check that the navigation link to the grandchild [G](efg.html) 
    does not appear as a child of top-level [F](f.html). ✅

# Collections

1.  Check that the breadcrumb link in the [child page in Collection 1]
    leads to the [parent page in Collection 1]. ✅

1.  Check that the breadcrumb link in the [child page in Collection 2]
    leads to the [parent page in Collection 2].

1.  Check that the table of contents link in the [parent page in Collection 1]
    leads to the [child page in Collection 1]. ✅

1.  Check that the table of contents link in the [parent page in Collection 2]
    leads to the [child page in Collection 2].
    
[Child page in Collection 1]: {% link _collection-1/child.md %}

[Parent page in Collection 1]: {% link _collection-1/parent.md %}

[Child page in Collection 2]: {% link _collection-2/child.md %}

[Parent page in Collection 2]: {% link _collection-2/parent.md %}
