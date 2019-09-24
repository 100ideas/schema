---
title: ResourceParameters
authors: []
---

Describes limits or requested amounts for a particular resource (e.g. memory or CPU). 

## Properties

| **type _(required)_** | `enum<`​`ResourceParameters`​`>`               | The name of the type and all descendant types.                              | [Entity](./Entity.html)                         |
| --------------------- | ---------------------------------------------- | --------------------------------------------------------------------------- | ----------------------------------------------- |
| alternateNames        | `array<`​`string`​`>`                          | Alternate names (aliases) for the item.                                     | [Thing](./Thing.html)                           |
| description           | `string` \| `array<`​[`Node`](./Node.html)​`>` | A description of the item.                                                  | [Thing](./Thing.html)                           |
| id                    | `string`                                       | The identifier for this item.                                               | [Entity](./Entity.html)                         |
| meta                  | `object`                                       | Metadata associated with this item.                                         | [Entity](./Entity.html)                         |
| name                  | `string`                                       | The name of the item.                                                       | [Thing](./Thing.html)                           |
| resourceLimit         | `number`                                       | The maximum amount of the resource that can be used.                        | [ResourceParameters](./ResourceParameters.html) |
| resourceRequested     | `number`                                       | The amount of the resource that has been requested (and possibly reserved). | [ResourceParameters](./ResourceParameters.html) |
| url                   | `string<uri>`                                  | The URL of the item.                                                        | [Thing](./Thing.html)                           |
