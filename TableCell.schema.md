---
title: TableCell
authors: []
---

A cell within a \`Table\`. 

## Properties

| **content _(required)_** | `array<`​[`InlineContent`](./InlineContent.html)​`>` | Contents of the table cell.                     | [TableCell](./TableCell.html) |
| ------------------------ | ---------------------------------------------------- | ----------------------------------------------- | ----------------------------- |
| **type _(required)_**    | `enum<`​`TableCell`​`>`                              | The name of the type and all descendant types.  | [Entity](./Entity.html)       |
| cellType                 | `enum<`​`data` \| `header`​`>`                       | Indicates whether the cell is a header or data. | [TableCell](./TableCell.html) |
| colspan                  | `integer`                                            | How many columns the cell extends.              | [TableCell](./TableCell.html) |
| id                       | `string`                                             | The identifier for this item.                   | [Entity](./Entity.html)       |
| meta                     | `object`                                             | Metadata associated with this item.             | [Entity](./Entity.html)       |
| name                     | `string`                                             | The name of the cell.                           | [TableCell](./TableCell.html) |
| rowspan                  | `integer`                                            | How many columns the cell extends.              | [TableCell](./TableCell.html) |
