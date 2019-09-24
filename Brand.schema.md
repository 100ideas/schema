---
title: Brand
authors: []
---

A brand used by an organization or person for labeling a product, product group, or similar. 

## Properties

| **name _(required)_** | `string`                                             | The name of the item.                          | [Thing](./Thing.html)   |
| --------------------- | ---------------------------------------------------- | ---------------------------------------------- | ----------------------- |
| **type _(required)_** | `enum<`​`Brand`​`>`                                  | The name of the type and all descendant types. | [Entity](./Entity.html) |
| alternateNames        | `array<`​`string`​`>`                                | Alternate names (aliases) for the item.        | [Thing](./Thing.html)   |
| description           | `string` \| `array<`​[`Node`](./Node.html)​`>`       | A description of the item.                     | [Thing](./Thing.html)   |
| id                    | `string`                                             | The identifier for this item.                  | [Entity](./Entity.html) |
| logo                  | `string<uri>` \| [`ImageObject`](./ImageObject.html) | A logo associated with the brand.              | [Brand](./Brand.html)   |
| meta                  | `object`                                             | Metadata associated with this item.            | [Entity](./Entity.html) |
| reviews               | `array<`​`string`​`>`                                | Reviews of the brand.                          | [Brand](./Brand.html)   |
| url                   | `string<uri>`                                        | The URL of the item.                           | [Thing](./Thing.html)   |
