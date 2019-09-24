---
title: QuoteBlock
authors: []
---

A section quoted from somewhere else. 

## Properties

| **content _(required)_** | `array<`​[`BlockContent`](./BlockContent.html)​`>` | The content of the quote.                      | [QuoteBlock](./QuoteBlock.html) |
| ------------------------ | -------------------------------------------------- | ---------------------------------------------- | ------------------------------- |
| **type _(required)_**    | `enum<`​`QuoteBlock`​`>`                           | The name of the type and all descendant types. | [Entity](./Entity.html)         |
| cite                     | [`Cite`](./Cite.html) \| `string<uri>`             | The source of the quote.                       | [QuoteBlock](./QuoteBlock.html) |
| id                       | `string`                                           | The identifier for this item.                  | [Entity](./Entity.html)         |
| meta                     | `object`                                           | Metadata associated with this item.            | [Entity](./Entity.html)         |
