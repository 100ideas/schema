---
title: Environment
authors: []
---

A computational environment.

## Properties

| **name _(required)_** | `string`                                                       | The name of the item.                                                                                     | [Thing](./Thing.html)             |
| --------------------- | -------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **type _(required)_** | `enum<`​`Environment`​`>`                                      | The name of the type and all descendant types.                                                            | [Entity](./Entity.html)           |
| adds                  | `array<`​[`SoftwareSourceCode`](./SoftwareSourceCode.html)​`>` | The packages that this environment adds to the base environments listed under \`extends\` (if any).,      | [Environment](./Environment.html) |
| alternateNames        | `array<`​`string`​`>`                                          | Alternate names (aliases) for the item.                                                                   | [Thing](./Thing.html)             |
| description           | `string` \| `array<`​[`Node`](./Node.html)​`>`                 | A description of the item.                                                                                | [Thing](./Thing.html)             |
| extends               | `array<`​[`Environment`](./Environment.html)​`>`               | Other environments that this environment extends by adding or removing packages.,                         | [Environment](./Environment.html) |
| id                    | `string`                                                       | The identifier for this item.                                                                             | [Entity](./Entity.html)           |
| meta                  | `object`                                                       | Metadata associated with this item.                                                                       | [Entity](./Entity.html)           |
| removes               | `array<`​[`SoftwareSourceCode`](./SoftwareSourceCode.html)​`>` | The packages that this environment removes from the base environments listed under \`extends\` (if any)., | [Environment](./Environment.html) |
| url                   | `string<uri>`                                                  | The URL of the item.                                                                                      | [Thing](./Thing.html)             |
