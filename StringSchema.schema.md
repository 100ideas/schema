---
title: StringSchema
authors: []
---

A schema specifying constraints on a string node.

## Properties

| **type _(required)_** | `enum<`​`StringSchema`​`>` | The name of the type and all descendant types.      | [Entity](./Entity.html)             |
| --------------------- | -------------------------- | --------------------------------------------------- | ----------------------------------- |
| id                    | `string`                   | The identifier for this item.                       | [Entity](./Entity.html)             |
| maxLength             | `number`                   | The maximum length for a string node.               | [StringSchema](./StringSchema.html) |
| meta                  | `object`                   | Metadata associated with this item.                 | [Entity](./Entity.html)             |
| minLength             | `number`                   | The minimum length for a string node.               | [StringSchema](./StringSchema.html) |
| pattern               | `string`                   | A regular expression that a string node must match. | [StringSchema](./StringSchema.html) |
