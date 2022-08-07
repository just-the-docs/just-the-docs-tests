---
title: Lists of lists
---

# Lists of lists

## Ordered list numbering

Check that the labels on the ordered lists shown below are correct. ✅

1. Ordered List 1
    * Unordered List 1
        1. Ordered List 2
            * Unordered List 2
                * Unordered List 3

1. Ordered List 1
    1. Ordered List 2 - Item 1
        * Unordered List 1 - Item 1
        * Unordered List 1 - Item 2
    2. Ordered List 2 - Item 2

Check that nested ordered lists of more than two levels have different label styles.
If not, check that the theme docs warn about this issue. ❌

1. Ordered List 1 - Item 1
    1. Ordered List 2 - Item 1
        1. Ordered List 3 - Item 1
        2. Ordered List 3 - Item 2
    2. Ordered List 2 - Item 2
2. Ordered List 1 - Item 2

## Task lists

Check that the layout of the nested lists below is correct. ✅

### Nesting task lists

- [ ] level 1 item (task)
  - [ ] level 2 item (task)
  - [ ] level 2 item (task)
- [ ] level 1 item (task)
- [ ] level 1 item (task)

### Nesting a ul in a task list

- [ ] level 1 item (task)
  - level 2 item (ul)
  - level 2 item (ul)
- [ ] level 1 item (task)
- [ ] level 1 item (task)

### Nesting a task list in a ul

- level 1 item (ul)
  - [ ] level 2 item (task)
  - [ ] level 2 item (task)
- level 1 item (ul)
- level 1 item (ul)
