---
title: Link
authors: []
---

A hyperlink to other pages, sections within the same document, resources, or any URL.

## Properties

| **content _(required)_** | `array<`​[`InlineContent`](./InlineContent.html)​`>` | The textual content of the link.                       | [Link](./Link.html)     |
| ------------------------ | ---------------------------------------------------- | ------------------------------------------------------ | ----------------------- |
| **target _(required)_**  | `string<uri>`                                        | The target of the link.                                | [Link](./Link.html)     |
| **type _(required)_**    | `enum<`​`Link`​`>`                                   | The name of the type and all descendant types.         | [Entity](./Entity.html) |
| id                       | `string`                                             | The identifier for this item.                          | [Entity](./Entity.html) |
| meta                     | `object`                                             | Metadata associated with this item.                    | [Entity](./Entity.html) |
| relation                 | `string`                                             | The relation between the target and the current thing. | [Link](./Link.html)     |
| title                    | `string`                                             | A title for the link.                                  | [Link](./Link.html)     |
