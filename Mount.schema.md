---
title: Mount
authors: []
---

Describes a volume mount from a host to container. 

## Properties

| **mountDestination _(required)_** | `string`                                       | The mount location inside the container.          | [Mount](./Mount.html)   |
| --------------------------------- | ---------------------------------------------- | ------------------------------------------------- | ----------------------- |
| **type _(required)_**             | `enum<`​`Mount`​`>`                            | The name of the type and all descendant types.    | [Entity](./Entity.html) |
| alternateNames                    | `array<`​`string`​`>`                          | Alternate names (aliases) for the item.           | [Thing](./Thing.html)   |
| description                       | `string` \| `array<`​[`Node`](./Node.html)​`>` | A description of the item.                        | [Thing](./Thing.html)   |
| id                                | `string`                                       | The identifier for this item.                     | [Entity](./Entity.html) |
| meta                              | `object`                                       | Metadata associated with this item.               | [Entity](./Entity.html) |
| mountOptions                      | `array<`​`string`​`>`                          | A list of options to use when applying the mount. | [Mount](./Mount.html)   |
| mountSource                       | `string`                                       | The mount source directory on the host.           | [Mount](./Mount.html)   |
| mountType                         | `string`                                       | The type of mount.                                | [Mount](./Mount.html)   |
| name                              | `string`                                       | The name of the item.                             | [Thing](./Thing.html)   |
| url                               | `string<uri>`                                  | The URL of the item.                              | [Thing](./Thing.html)   |
