---
title: List
authors: []
---

A list of items. 

## Properties

| **items _(required)_** | `array<`​[`ListItem`](./ListItem.html)​`>`             | The items in the list                          | [List](./List.html)     |
| ---------------------- | ------------------------------------------------------ | ---------------------------------------------- | ----------------------- |
| **type _(required)_**  | `enum<`​`List`​`>`                                     | The name of the type and all descendant types. | [Entity](./Entity.html) |
| id                     | `string`                                               | The identifier for this item.                  | [Entity](./Entity.html) |
| meta                   | `object`                                               | Metadata associated with this item.            | [Entity](./Entity.html) |
| order                  | `enum<`​`ascending` \| `descending` \| `unordered`​`>` | Type of ordering.                              | [List](./List.html)     |
