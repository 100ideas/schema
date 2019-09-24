---
title: Mark
authors: []
---

A base class for nodes that mark some other inline content in some way (e.g. as being emphasised, or quoted). 

## Properties

| **content _(required)_** | `array<`​[`InlineContent`](./InlineContent.html)​`>`                                                | The content that is marked.                    | [Mark](./Mark.html)     |
| ------------------------ | --------------------------------------------------------------------------------------------------- | ---------------------------------------------- | ----------------------- |
| **type _(required)_**    | `enum<`​`Mark` \| `Delete` \| `Emphasis` \| `Quote` \| `Strong` \| `Subscript` \| `Superscript`​`>` | The name of the type and all descendant types. | [Entity](./Entity.html) |
| id                       | `string`                                                                                            | The identifier for this item.                  | [Entity](./Entity.html) |
| meta                     | `object`                                                                                            | Metadata associated with this item.            | [Entity](./Entity.html) |
