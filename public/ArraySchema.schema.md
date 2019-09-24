---
title: ArraySchema
authors: []
---

A schema specifying constraints on an array node.

## Properties

| **type _(required)_** | `enum<`​`ArraySchema`​`>`           | The name of the type and all descendant types.                                                | [Entity](./Entity.html)           |
| --------------------- | ----------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------- |
| contains              | [`SchemaTypes`](./SchemaTypes.html) | An array node is valid if at least one of its items is valid against the \`contains\` schema. | [ArraySchema](./ArraySchema.html) |
| id                    | `string`                            | The identifier for this item.                                                                 | [Entity](./Entity.html)           |
| items                 | [`SchemaTypes`](./SchemaTypes.html) | Another data schema node specifying the constraints on all items in the array.                | [ArraySchema](./ArraySchema.html) |
| maxItems              | `number`                            | An array node is valid if its size is less than, or equal to, this value.                     | [ArraySchema](./ArraySchema.html) |
| meta                  | `object`                            | Metadata associated with this item.                                                           | [Entity](./Entity.html)           |
| minItems              | `number`                            | An array node is valid if its size is greater than, or equal to, this value.                  | [ArraySchema](./ArraySchema.html) |
| uniqueItems           | `boolean`                           | A flag to indicate that each value in the array should be unique.                             | [ArraySchema](./ArraySchema.html) |
