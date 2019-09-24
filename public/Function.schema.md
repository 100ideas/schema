---
title: Function
authors: []
---

A function with a name, which might take Parameters and return a value of a certain type.

## Properties

| **name _(required)_** | `string`                                     | The name of the function.                      | [Function](./Function.html) |
| --------------------- | -------------------------------------------- | ---------------------------------------------- | --------------------------- |
| **type _(required)_** | `enum<`​`Function`​`>`                       | The name of the type and all descendant types. | [Entity](./Entity.html)     |
| id                    | `string`                                     | The identifier for this item.                  | [Entity](./Entity.html)     |
| meta                  | `object`                                     | Metadata associated with this item.            | [Entity](./Entity.html)     |
| parameters            | `array<`​[`Parameter`](./Parameter.html)​`>` | An array of parameters the function exsists.   | [Function](./Function.html) |
| returns               | [`SchemaTypes`](./SchemaTypes.html)          | The return type of the function.               | [Function](./Function.html) |
