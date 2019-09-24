---
title: Product
authors: []
---

Any offered product or service. For example, a pair of shoes; a haircut; or an episode of a TV show streamed online. 

## Properties

| **type _(required)_** | `enum<`​`Product`​`>`                                | The name of the type and all descendant types. | [Entity](./Entity.html)   |
| --------------------- | ---------------------------------------------------- | ---------------------------------------------- | ------------------------- |
| alternateNames        | `array<`​`string`​`>`                                | Alternate names (aliases) for the item.        | [Thing](./Thing.html)     |
| brands                | `array<`​[`Brand`](./Brand.html)​`>`                 | Brands that the product is labelled with.      | [Product](./Product.html) |
| description           | `string` \| `array<`​[`Node`](./Node.html)​`>`       | A description of the item.                     | [Thing](./Thing.html)     |
| id                    | `string`                                             | The identifier for this item.                  | [Entity](./Entity.html)   |
| logo                  | `string<uri>` \| [`ImageObject`](./ImageObject.html) | The logo of the product.                       | [Product](./Product.html) |
| meta                  | `object`                                             | Metadata associated with this item.            | [Entity](./Entity.html)   |
| name                  | `string`                                             | The name of the item.                          | [Thing](./Thing.html)     |
| productID             | `string`                                             | Product identification code.                   | [Product](./Product.html) |
| url                   | `string<uri>`                                        | The URL of the item.                           | [Thing](./Thing.html)     |
