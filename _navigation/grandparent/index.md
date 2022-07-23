---
title: Grandparents ❌
parent: Navigation
grand_parent: Tests
---

# Grandparents

## Grandchildren with the same parent title

- [A](a.html) has a child [C](ac.html), which has a child [D](acd.html).
  
- Also [B](b.html) has a child [C](bc.html), which has a child [D](bcd.html).

The grandchildren specify their grandparents, which disambiguate their parents.

The unfolded navigation panel should include:

```
A
- C
  - D
B
- C
  - D
```

❌ The breadcrumbs in the grandchild of A should include a link to the child C of A.

The breadcrumbs in the grandchild of B should include a link to the child C of B.

## A grandchild with the same parent title as a child or top-level page

- [E](e.html) has a child [F](ef.html), which has a child [G](efg.html).

- [F](f.html) has a child [G](fg.html)

- [G](g.html) is a top-level page.

The existence of a grandparent for the grandchild G of E disambiguates its parent F.

The existence of a parent for the child G of top-level F disambiguates its parent F.

The unfolded navigation panel should include:

```
E
- F
  - G
F
- G
G
```

❌ The breadcrumbs in the grandchild G should start with a link to its grandparent E.

❌ The navigation link to the grandchild G should not appear as a child of top-level F.
