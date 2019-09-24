---
title: CodeChunk
authors: []
---

A executable chunk of code.

## Properties

| **text _(required)_** | `string`                                                                                                                          | The text of the code.                                             | [Code](./Code.html)           |
| --------------------- | --------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------- |
| **type _(required)_** | `enum<`​`CodeChunk`​`>`                                                                                                           | The name of the type and all descendant types.                    | [Entity](./Entity.html)       |
| alters                | `array<`​`string`​`>`                                                                                                             | Names of variables that the code chunk alters.                    | [CodeChunk](./CodeChunk.html) |
| assigns               | `array<`​`string` \| [`Variable`](./Variable.html)​`>`                                                                            | Variables that the code chunk assigns to.                         | [CodeChunk](./CodeChunk.html) |
| declares              | `array<`​`string` \| [`Variable`](./Variable.html) \| [`Function`](./Function.html)​`>`                                           | Variables that the code chunk declares.                           | [CodeChunk](./CodeChunk.html) |
| duration              | `number`                                                                                                                          | Duration in seconds of the last execution of the chunk.           | [CodeChunk](./CodeChunk.html) |
| errors                | `array<`​[`CodeError`](./CodeError.html)​`>`                                                                                      | Errors when compiling or executing the chunk.                     | [CodeChunk](./CodeChunk.html) |
| id                    | `string`                                                                                                                          | The identifier for this item.                                     | [Entity](./Entity.html)       |
| imports               | `array<`​`string` \| [`SoftwareSourceCode`](./SoftwareSourceCode.html) \| [`SoftwareApplication`](./SoftwareApplication.html)​`>` | Software packages that the code chunk imports                     | [CodeChunk](./CodeChunk.html) |
| meta                  | `object`                                                                                                                          | Metadata associated with this item.                               | [Entity](./Entity.html)       |
| outputs               | `array<`​[`Node`](./Node.html)​`>`                                                                                                | Outputs from executing the chunk.                                 | [CodeChunk](./CodeChunk.html) |
| programmingLanguage   | `string`                                                                                                                          | The programming language of the code.                             | [Code](./Code.html)           |
| reads                 | `array<`​`string`​`>`                                                                                                             | Filesystem paths that this code chunk reads from.                 | [CodeChunk](./CodeChunk.html) |
| uses                  | `array<`​`string` \| [`Variable`](./Variable.html)​`>`                                                                            | Names of variables that the code chunk uses (but does not alter). | [CodeChunk](./CodeChunk.html) |
