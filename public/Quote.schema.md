---
title: Quote
authors: []
---

Inline, quoted content.

## Properties

| **content _(required)_** | `array<`​[`InlineContent`](./InlineContent.html)​`>` | The content that is marked.                    | [Mark](./Mark.html)     |
| ------------------------ | ---------------------------------------------------- | ---------------------------------------------- | ----------------------- |
| **type _(required)_**    | `enum<`​`Quote`​`>`                                  | The name of the type and all descendant types. | [Entity](./Entity.html) |
| cite                     | [`Cite`](./Cite.html) \| `string<uri>`               | The source of the quote.                       | [Quote](./Quote.html)   |
| id                       | `string`                                             | The identifier for this item.                  | [Entity](./Entity.html) |
| meta                     | `object`                                             | Metadata associated with this item.            | [Entity](./Entity.html) |
