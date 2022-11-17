---
title: Parent disambiguation
---

# ✅ Parent disambiguation

The `grand_parent` title can be used to disambiguate an ambiguous `parent` title.

## Grandchildren with the same parent title

- The top-level page [A](../a/) has a child [C](../ac/),
  which has a child [D](../acd/).
  
- The top-level page [B](../b/) also has a child [C](../bc/),
  which has a child [D](../bcd/).

- The grandchildren specify their grandparents, 
  which is supposed to disambiguate their parents.

1.  Check that the unfolded navigation panel includes:

    ```
    A
    - C
      - D
    B
    - C
      - D
    ```

1.  Check that the breadcrumbs in the grandchild [D](../acd/) of A include 
    a link to the child [C](../ac/) of A.

1.  Check that the breadcrumbs in the grandchild [D](../bcd/) of B include
    a link to the child [C](../bc/) of B.

## A grandchild with the same parent title as a child or top-level page

- The top-level page [E](../e/) has a child [F](../ef/), 
  which has a child [G](../efg/).

- The top-level page [F](../f/) has a child [G](../fg/)

- The top-level page [G](../g/) has no children.

- The existence of a grandparent for the grandchild [G](../efg/) of [E](../e/)
  is supposed to disambiguate its parent [F](../ef/).

- The existence of a parent for the child [G](../fg/) of top-level [F](../f/) 
  is supposed to disambiguate its parent [F](../f/).

1.  Check that the unfolded navigation panel includes:

    ```
    E
    - F
      - G
    F
    - G
    G
    ```

1.  Check that the breadcrumbs in the grandchild [G](../efg/)
    start with a link to its grandparent [E](../e/).

1.  Check that the navigation link to the grandchild [G](../efg/) 
    does not appear as a child of top-level [F](../f/).

1.  Check that when the grandchild [G](../efg/) is selected,
    the link to the child [G](../fg/) of top-level [F](../f/) does not appear.

# ✅ Collections

1.  Check that the breadcrumb link in the [child page in Collection 1]
    leads to the [parent page in Collection 1].

1.  Check that the breadcrumb link in the [child page in Collection 2]
    leads to the [parent page in Collection 2].

1.  Check that the table of contents link in the [parent page in Collection 1]
    leads to the [child page in Collection 1].

1.  Check that the table of contents link in the [parent page in Collection 2]
    leads to the [child page in Collection 2].
    
[Child page in Collection 1]: {{ site.baseurl }}{% link _collection-1/child.md %}

[Parent page in Collection 1]: {{ site.baseurl }}{% link _collection-1/parent.md %}

[Child page in Collection 2]: {{ site.baseurl }}{% link _collection-2/child.md %}

[Parent page in Collection 2]: {{ site.baseurl }}{% link _collection-2/parent.md %}
