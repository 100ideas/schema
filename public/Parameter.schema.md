---
title: Parameter
authors: []
---

A parameter that can be set and used in evaluated code.

## Properties

| **name _(required)_** | `string`                            | The name the parameter is referred to in code.                                                | [Variable](./Variable.html)   |
| --------------------- | ----------------------------------- | --------------------------------------------------------------------------------------------- | ----------------------------- |
| **type _(required)_** | `enum<`​`Parameter`​`>`             | The name of the type and all descendant types.                                                | [Entity](./Entity.html)       |
| default               | [`Node`](./Node.html)               | The default value of the parameter.                                                           | [Parameter](./Parameter.html) |
| extends               | `boolean`                           | Indicates that this parameter is variadic and can accept multiple named arguments.            | [Parameter](./Parameter.html) |
| id                    | `string`                            | The identifier for this item.                                                                 | [Entity](./Entity.html)       |
| meta                  | `object`                            | Metadata associated with this item.                                                           | [Entity](./Entity.html)       |
| repeats               | `boolean`                           | Indicates that this parameter is variadic and can accept multiple arguments.                  | [Parameter](./Parameter.html) |
| required              | `boolean`                           | Is this parameter required, if not it should have a default or default is assumed to be null. | [Parameter](./Parameter.html) |
| schema                | [`SchemaTypes`](./SchemaTypes.html) | The schema that the value of the parameter will be validated against.                         | [Variable](./Variable.html)   |
