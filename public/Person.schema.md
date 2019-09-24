---
title: Person
authors: []
---

A person (alive, dead, undead, or fictional).

## Properties

| **type _(required)_** | `enum<`​`Person`​`>`                                                            | The name of the type and all descendant types.                                                            | [Entity](./Entity.html) |
| --------------------- | ------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | ----------------------- |
| address               | `string`                                                                        | Postal address for the person.                                                                            | [Person](./Person.html) |
| affiliations          | `array<`​[`Organization`](./Organization.html)​`>`                              | Organizations that the person is affiliated with.                                                         | [Person](./Person.html) |
| alternateNames        | `array<`​`string`​`>`                                                           | Alternate names (aliases) for the item.                                                                   | [Thing](./Thing.html)   |
| description           | `string` \| `array<`​[`Node`](./Node.html)​`>`                                  | A description of the item.                                                                                | [Thing](./Thing.html)   |
| emails                | `array<`​`string<email>`​`>`                                                    | Email addresses for the person.                                                                           | [Person](./Person.html) |
| familyNames           | `codec<ssi>` & `array<`​`string`​`>`                                            | Family name. In the U.S., the last name of a person.                                                      | [Person](./Person.html) |
| funders               | `array<`​[`Organization`](./Organization.html) \| [`Person`](./Person.html)​`>` | A person or organization that supports (sponsors) something through some kind of financial contribution.  | [Person](./Person.html) |
| givenNames            | `codec<ssi>` & `array<`​`string`​`>`                                            | Given name. In the U.S., the first name of a person.                                                      | [Person](./Person.html) |
| honorificPrefix       | `string`                                                                        | An honorific prefix preceding a person's name such as Dr/Mrs/Mr.                                          | [Person](./Person.html) |
| honorificSuffix       | `string`                                                                        | An honorific suffix after a person's name such as MD/PhD/MSCSW.                                           | [Person](./Person.html) |
| id                    | `string`                                                                        | The identifier for this item.                                                                             | [Entity](./Entity.html) |
| jobTitle              | `string`                                                                        | The job title of the person (for example, Financial Manager).                                             | [Person](./Person.html) |
| memberOf              | `array<`​[`Organization`](./Organization.html)​`>`                              | An organization (or program membership) to which this person belongs.                                     | [Person](./Person.html) |
| meta                  | `object`                                                                        | Metadata associated with this item.                                                                       | [Entity](./Entity.html) |
| name                  | `string`                                                                        | The name of the item.                                                                                     | [Thing](./Thing.html)   |
| telephoneNumbers      | `array<`​`string`​`>`                                                           | Telephone numbers for the person.                                                                         | [Person](./Person.html) |
| url                   | `string<uri>`                                                                   | The URL of the item.                                                                                      | [Thing](./Thing.html)   |
