---
title: CodeExpression
authors: []
---

An expression defined in programming language source code.

## Properties

| **text _(required)_** | `string`                                     | The text of the code.                                   | [Code](./Code.html)                     |
| --------------------- | -------------------------------------------- | ------------------------------------------------------- | --------------------------------------- |
| **type _(required)_** | `enum<`​`CodeExpression`​`>`                 | The name of the type and all descendant types.          | [Entity](./Entity.html)                 |
| errors                | `array<`​[`CodeError`](./CodeError.html)​`>` | Errors when compiling or executing the chunk.           | [CodeExpression](./CodeExpression.html) |
| id                    | `string`                                     | The identifier for this item.                           | [Entity](./Entity.html)                 |
| meta                  | `object`                                     | Metadata associated with this item.                     | [Entity](./Entity.html)                 |
| output                | [`Node`](./Node.html)                        | The value of the expression when it was last evaluated. | [CodeExpression](./CodeExpression.html) |
| programmingLanguage   | `string`                                     | The programming language of the code.                   | [Code](./Code.html)                     |
