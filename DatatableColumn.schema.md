---
title: DatatableColumn
authors: []
---

A column of data within a Datatable.

## Properties

| **name _(required)_**   | `string`                                       | The name of the item.                             | [Thing](./Thing.html)                     |
| ----------------------- | ---------------------------------------------- | ------------------------------------------------- | ----------------------------------------- |
| **type _(required)_**   | `enum<`​`DatatableColumn`​`>`                  | The name of the type and all descendant types.    | [Entity](./Entity.html)                   |
| **values _(required)_** | `array`                                        | The data values of the column.                    | [DatatableColumn](./DatatableColumn.html) |
| alternateNames          | `array<`​`string`​`>`                          | Alternate names (aliases) for the item.           | [Thing](./Thing.html)                     |
| description             | `string` \| `array<`​[`Node`](./Node.html)​`>` | A description of the item.                        | [Thing](./Thing.html)                     |
| id                      | `string`                                       | The identifier for this item.                     | [Entity](./Entity.html)                   |
| meta                    | `object`                                       | Metadata associated with this item.               | [Entity](./Entity.html)                   |
| schema                  | [`ArraySchema`](./ArraySchema.html)            | The schema to use to validate data in the column. | [DatatableColumn](./DatatableColumn.html) |
| url                     | `string<uri>`                                  | The URL of the item.                              | [Thing](./Thing.html)                     |
