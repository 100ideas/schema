---
title: ContactPoint
authors: []
---

A contact point, for example, a R&D department.

## Properties

| **type _(required)_** | `enum<`​`ContactPoint`​`>`                     | The name of the type and all descendant types.                                                                  | [Entity](./Entity.html)             |
| --------------------- | ---------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | ----------------------------------- |
| alternateNames        | `array<`​`string`​`>`                          | Alternate names (aliases) for the item.                                                                         | [Thing](./Thing.html)               |
| availableLanguages    | `array<`​`string`​`>`                          | Languages (human not programming) in which it is possible to communicate with the organization/department etc.  | [ContactPoint](./ContactPoint.html) |
| description           | `string` \| `array<`​[`Node`](./Node.html)​`>` | A description of the item.                                                                                      | [Thing](./Thing.html)               |
| emails                | `array<`​`string<email>`​`>`                   | Email address for correspondence.                                                                               | [ContactPoint](./ContactPoint.html) |
| id                    | `string`                                       | The identifier for this item.                                                                                   | [Entity](./Entity.html)             |
| meta                  | `object`                                       | Metadata associated with this item.                                                                             | [Entity](./Entity.html)             |
| name                  | `string`                                       | The name of the item.                                                                                           | [Thing](./Thing.html)               |
| telephoneNumbers      | `array<`​`string`​`>`                          | Telephone numbers for the contact point.                                                                        | [ContactPoint](./ContactPoint.html) |
| url                   | `string<uri>`                                  | The URL of the item.                                                                                            | [Thing](./Thing.html)               |
