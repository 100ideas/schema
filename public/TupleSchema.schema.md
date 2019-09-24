---
title: TupleSchema
authors: []
---

A schema specifying constraints on an array of heterogeneous items.

## Properties

| **type _(required)_** | `enum<`​`TupleSchema`​`>`                        | The name of the type and all descendant types.                                       | [Entity](./Entity.html)           |
| --------------------- | ------------------------------------------------ | ------------------------------------------------------------------------------------ | --------------------------------- |
| id                    | `string`                                         | The identifier for this item.                                                        | [Entity](./Entity.html)           |
| items                 | `array<`​[`SchemaTypes`](./SchemaTypes.html)​`>` | An array of schemas specifying the constraints on each successive item in the array. | [TupleSchema](./TupleSchema.html) |
| meta                  | `object`                                         | Metadata associated with this item.                                                  | [Entity](./Entity.html)           |
