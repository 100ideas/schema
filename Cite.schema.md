---
title: Cite
authors: []
---

A reference to a CreativeWork that is cited in another CreativeWork. 

## Properties

| **target _(required)_** | `string`                                             | The target of the citation (URL or reference ID).                                                      | [Cite](./Cite.html)     |
| ----------------------- | ---------------------------------------------------- | ------------------------------------------------------------------------------------------------------ | ----------------------- |
| **type _(required)_**   | `enum<`​`Cite`​`>`                                   | The name of the type and all descendant types.                                                         | [Entity](./Entity.html) |
| citationMode            | `enum<`​`normal` \| `suppressAuthor`​`>`             | How the cite is rendered in the surrounding text.                                                      | [Cite](./Cite.html)     |
| content                 | `array<`​[`InlineContent`](./InlineContent.html)​`>` | Optional structured content/text of this citation.                                                     | [Cite](./Cite.html)     |
| id                      | `string`                                             | The identifier for this item.                                                                          | [Entity](./Entity.html) |
| meta                    | `object`                                             | Metadata associated with this item.                                                                    | [Entity](./Entity.html) |
| pageEnd                 | `string` \| `integer`                                | The page on which the work ends; for example "138" or "xvi".                                           | [Cite](./Cite.html)     |
| pageStart               | `string` \| `integer`                                | The page on which the work starts; for example "135" or "xiii".                                        | [Cite](./Cite.html)     |
| pagination              | `string`                                             | Any description of pages that is not separated into pageStart and pageEnd; for example, "1-6, 9, 55".  | [Cite](./Cite.html)     |
| prefix                  | `string`                                             | A prefix to show before the citation.                                                                  | [Cite](./Cite.html)     |
| suffix                  | `string`                                             | A suffix to show after the citation.                                                                   | [Cite](./Cite.html)     |
