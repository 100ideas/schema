---
title: CodeError
authors: []
---

An error that occured when parsing, compiling or executing some Code.

## Properties

| **kind _(required)_** | `string`                | The type of error.                                   | [CodeError](./CodeError.html) |
| --------------------- | ----------------------- | ---------------------------------------------------- | ----------------------------- |
| **type _(required)_** | `enum<`​`CodeError`​`>` | The name of the type and all descendant types.       | [Entity](./Entity.html)       |
| id                    | `string`                | The identifier for this item.                        | [Entity](./Entity.html)       |
| message               | `string`                | The error message or brief description of the error. | [CodeError](./CodeError.html) |
| meta                  | `object`                | Metadata associated with this item.                  | [Entity](./Entity.html)       |
| trace                 | `string`                | Stack trace leading up to the error.                 | [CodeError](./CodeError.html) |
