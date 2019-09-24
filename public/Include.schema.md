---
title: Include
authors: []
---

A directive to include content from an external source (e.g. file, URL) or content. 

## Properties

| **source _(required)_** | `string`                           | The source of the content.                                                                    | [Include](./Include.html) |
| ----------------------- | ---------------------------------- | --------------------------------------------------------------------------------------------- | ------------------------- |
| **type _(required)_**   | `enum<`​`Include`​`>`              | The name of the type and all descendant types.                                                | [Entity](./Entity.html)   |
| content                 | `array<`​[`Node`](./Node.html)​`>` | The content to be included.                                                                   | [Include](./Include.html) |
| hash                    | `string`                           | A SHA256 hash of the source content and media type the last time that the source was decoded. | [Include](./Include.html) |
| id                      | `string`                           | The identifier for this item.                                                                 | [Entity](./Entity.html)   |
| mediaType               | `string`                           | The media type of the source content.                                                         | [Include](./Include.html) |
| meta                    | `object`                           | Metadata associated with this item.                                                           | [Entity](./Entity.html)   |
