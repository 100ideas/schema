---
title: Organization
authors: []
---

An organization such as a school, NGO, corporation, club, etc.

## Properties

| **type _(required)_** | `enum<`​`Organization`​`>`                                                      | The name of the type and all descendant types.                                                                 | [Entity](./Entity.html)             |
| --------------------- | ------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- | ----------------------------------- |
| address               | `string`                                                                        | Postal address for the organization.                                                                           | [Organization](./Organization.html) |
| alternateNames        | `array<`​`string`​`>`                                                           | Alternate names (aliases) for the item.                                                                        | [Thing](./Thing.html)               |
| brands                | `array<`​[`Brand`](./Brand.html)​`>`                                            | Brands that the organization is connected with.                                                                | [Organization](./Organization.html) |
| contactPoints         | `array<`​[`ContactPoint`](./ContactPoint.html)​`>`                              | Correspondence/Contact points for the organization.                                                            | [Organization](./Organization.html) |
| departments           | `array<`​[`Organization`](./Organization.html)​`>`                              | Departments within the organization. For example, Department of Computer Science, Research & Development etc.  | [Organization](./Organization.html) |
| description           | `string` \| `array<`​[`Node`](./Node.html)​`>`                                  | A description of the item.                                                                                     | [Thing](./Thing.html)               |
| funders               | `array<`​[`Organization`](./Organization.html) \| [`Person`](./Person.html)​`>` | Organization(s) or person(s) funding the organization.                                                         | [Organization](./Organization.html) |
| id                    | `string`                                                                        | The identifier for this item.                                                                                  | [Entity](./Entity.html)             |
| legalName             | `string`                                                                        | Legal name for the Organization. Should only include letters and spaces.                                       | [Organization](./Organization.html) |
| meta                  | `object`                                                                        | Metadata associated with this item.                                                                            | [Entity](./Entity.html)             |
| name                  | `string`                                                                        | The name of the item.                                                                                          | [Thing](./Thing.html)               |
| parentOrganization    | [`Organization`](./Organization.html)                                           | Entity that the Organization is a part of. For example, parentOrganization to a department is a university.    | [Organization](./Organization.html) |
| url                   | `string<uri>`                                                                   | The URL of the item.                                                                                           | [Thing](./Thing.html)               |
