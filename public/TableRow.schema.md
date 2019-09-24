---
title: TableRow
authors: []
---

A row within a Table.

## Properties

| **cells _(required)_** | `array<`​[`TableCell`](./TableCell.html)​`>` | An array of cells in the row.                                                        | [TableRow](./TableRow.html) |
| ---------------------- | -------------------------------------------- | ------------------------------------------------------------------------------------ | --------------------------- |
| **type _(required)_**  | `enum<`​`TableRow`​`>`                       | The name of the type and all descendant types.                                       | [Entity](./Entity.html)     |
| id                     | `string`                                     | The identifier for this item.                                                        | [Entity](./Entity.html)     |
| meta                   | `object`                                     | Metadata associated with this item.                                                  | [Entity](./Entity.html)     |
| rowType                | `enum<`​`header` \| `footer`​`>`             | If present, indicates that all cells in this row should be treated as header cells.  | [TableRow](./TableRow.html) |
