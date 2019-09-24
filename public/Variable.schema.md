---
title: Variable
authors: []
---

A variable that can be set and used in code.

## Properties

| **name _(required)_** | `string`                              | The name the parameter is referred to in code.                                                | [Variable](./Variable.html) |
| --------------------- | ------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------- |
| **type _(required)_** | `enum<`​`Variable` \| `Parameter`​`>` | The name of the type and all descendant types.                                                | [Entity](./Entity.html)     |
| default               | [`Node`](./Node.html)                 | The default value of the parameter.                                                           | [Variable](./Variable.html) |
| id                    | `string`                              | The identifier for this item.                                                                 | [Entity](./Entity.html)     |
| meta                  | `object`                              | Metadata associated with this item.                                                           | [Entity](./Entity.html)     |
| required              | `boolean`                             | Is this parameter required, if not it should have a default or default is assumed to be null. | [Variable](./Variable.html) |
| schema                | [`SchemaTypes`](./SchemaTypes.html)   | The schema that the value of the parameter will be validated against.                         | [Variable](./Variable.html) |
