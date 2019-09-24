---
title: CodeFragment
authors: []
---

Inline code.

## Properties

| **text _(required)_** | `string`                                       | The text of the code.                          | [Code](./Code.html)     |
| --------------------- | ---------------------------------------------- | ---------------------------------------------- | ----------------------- |
| **type _(required)_** | `enum<`​`CodeFragment` \| `CodeExpression`​`>` | The name of the type and all descendant types. | [Entity](./Entity.html) |
| id                    | `string`                                       | The identifier for this item.                  | [Entity](./Entity.html) |
| meta                  | `object`                                       | Metadata associated with this item.            | [Entity](./Entity.html) |
| programmingLanguage   | `string`                                       | The programming language of the code.          | [Code](./Code.html)     |
