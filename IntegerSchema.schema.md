---
title: IntegerSchema
authors: []
---

A schema specifying the constraints on an integer node.

## Properties

| **type _(required)_** | `enum<`​`IntegerSchema`​`>` | The name of the type and all descendant types.      | [Entity](./Entity.html)             |
| --------------------- | --------------------------- | --------------------------------------------------- | ----------------------------------- |
| exclusiveMaximum      | `number`                    | The exclusive upper limit for a numeric node.       | [NumberSchema](./NumberSchema.html) |
| exclusiveMinimum      | `number`                    | The exclusive lower limit for a numeric node.       | [NumberSchema](./NumberSchema.html) |
| id                    | `string`                    | The identifier for this item.                       | [Entity](./Entity.html)             |
| maximum               | `number`                    | The inclusive upper limit for a numeric node.       | [NumberSchema](./NumberSchema.html) |
| meta                  | `object`                    | Metadata associated with this item.                 | [Entity](./Entity.html)             |
| minimum               | `number`                    | The inclusive lower limit for a numeric node.       | [NumberSchema](./NumberSchema.html) |
| multipleOf            | `number`                    | A number that a numeric node must be a multiple of. | [NumberSchema](./NumberSchema.html) |
