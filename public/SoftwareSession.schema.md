---
title: SoftwareSession
authors: []
---

Represents a runtime session with the resources and image that is required by software to execute. 

## Properties

| **environment _(required)_** | [`Environment`](./Environment.html)               | Definition of the environment to execute this session in. | [SoftwareSession](./SoftwareSession.html) |
| ---------------------------- | ------------------------------------------------- | --------------------------------------------------------- | ----------------------------------------- |
| **type _(required)_**        | `enum<`​`SoftwareSession`​`>`                     | The name of the type and all descendant types.            | [Entity](./Entity.html)                   |
| alternateNames               | `array<`​`string`​`>`                             | Alternate names (aliases) for the item.                   | [Thing](./Thing.html)                     |
| cpuResource                  | [`ResourceParameters`](./ResourceParameters.html) | The CPU resource for the session.                         | [SoftwareSession](./SoftwareSession.html) |
| description                  | `string` \| `array<`​[`Node`](./Node.html)​`>`    | A description of the item.                                | [Thing](./Thing.html)                     |
| id                           | `string`                                          | The identifier for this item.                             | [Entity](./Entity.html)                   |
| memoryResource               | [`ResourceParameters`](./ResourceParameters.html) | The memory resource for the session.                      | [SoftwareSession](./SoftwareSession.html) |
| meta                         | `object`                                          | Metadata associated with this item.                       | [Entity](./Entity.html)                   |
| name                         | `string`                                          | The name of the item.                                     | [Thing](./Thing.html)                     |
| url                          | `string<uri>`                                     | The URL of the item.                                      | [Thing](./Thing.html)                     |
| volumeMounts                 | `array<`​[`Mount`](./Mount.html)​`>`              | Volumes to mount in the session.                          | [SoftwareSession](./SoftwareSession.html) |
