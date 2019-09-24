---
title: EnumSchema
authors: []
---

A schema specifying that a node must be one of several values.

## Properties

| **type _(required)_** | `enum<`​`EnumSchema`​`>`           | The name of the type and all descendant types.         | [Entity](./Entity.html)         |
| --------------------- | ---------------------------------- | ------------------------------------------------------ | ------------------------------- |
| id                    | `string`                           | The identifier for this item.                          | [Entity](./Entity.html)         |
| meta                  | `object`                           | Metadata associated with this item.                    | [Entity](./Entity.html)         |
| values                | `array<`​[`Node`](./Node.html)​`>` | A node is valid if it is equal to any of these values. | [EnumSchema](./EnumSchema.html) |
