---
title: ConstantSchema
authors: []
---

A schema specifying a constant value that a node must have.

## Properties

| **type _(required)_** | `enum<`​`ConstantSchema`​`>` | The name of the type and all descendant types. | [Entity](./Entity.html)                 |
| --------------------- | ---------------------------- | ---------------------------------------------- | --------------------------------------- |
| id                    | `string`                     | The identifier for this item.                  | [Entity](./Entity.html)                 |
| meta                  | `object`                     | Metadata associated with this item.            | [Entity](./Entity.html)                 |
| value                 | [`Node`](./Node.html)        | The value that the node must have.             | [ConstantSchema](./ConstantSchema.html) |
