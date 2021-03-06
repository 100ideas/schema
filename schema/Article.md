---
authors: []
title: Article
---

An `Article` type allows you to provide details about a document containing amongst other properties, the content as written prose, executable snippets of code, as well as images.

include: ../public/Article.schema.md
:::
An article, including news and scholarly articles.

## Properties

| **authors _(required)_** | `codec<csi>` & `array<`​[`Person`](./Person.html) \| [`Organization`](./Organization.html)​`>` | The authors of this creative work.                                                                                      | [CreativeWork](./CreativeWork.html) |
| ------------------------ | ---------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------- |
| **title _(required)_**   | `string` \| `array<`​[`Node`](./Node.html)​`>`                                                 | The title of the creative work.                                                                                         | [CreativeWork](./CreativeWork.html) |
| **type _(required)_**    | `enum<`​`Article`​`>`                                                                          | The name of the type and all descendant types.                                                                          | [Entity](./Entity.html)             |
| alternateNames           | `array<`​`string`​`>`                                                                          | Alternate names (aliases) for the item.                                                                                 | [Thing](./Thing.html)               |
| content                  | `array<`​[`Node`](./Node.html)​`>`                                                             | The structured content of this creative work c.f. property \`text\`.                                                    | [CreativeWork](./CreativeWork.html) |
| dateCreated              | [`Date`](./Date.html) \| `string<date>` \| `string<date-time>`                                 | Date/time of creation.                                                                                                  | [CreativeWork](./CreativeWork.html) |
| dateModified             | [`Date`](./Date.html) \| `string<date>` \| `string<date-time>`                                 | Date/time of most recent modification.                                                                                  | [CreativeWork](./CreativeWork.html) |
| datePublished            | [`Date`](./Date.html) \| `string<date>` \| `string<date-time>`                                 | Date of first publication.                                                                                              | [CreativeWork](./CreativeWork.html) |
| description              | `string` \| `array<`​[`Node`](./Node.html)​`>`                                                 | A description of the item.                                                                                              | [Thing](./Thing.html)               |
| editors                  | `array<`​[`Person`](./Person.html)​`>`                                                         | Persons who edited the CreativeWork.                                                                                    | [CreativeWork](./CreativeWork.html) |
| environment              | [`Environment`](./Environment.html)                                                            | The computational environment in which the document should be executed.                                                 | [Article](./Article.html)           |
| funders                  | `array<`​[`Person`](./Person.html) \| [`Organization`](./Organization.html)​`>`                | Person or organisation that funded the CreativeWork.                                                                    | [CreativeWork](./CreativeWork.html) |
| id                       | `string`                                                                                       | The identifier for this item.                                                                                           | [Entity](./Entity.html)             |
| isPartOf                 | [`CreativeWorkTypes`](./CreativeWorkTypes.html)                                                | An item or other CreativeWork that this CreativeWork is a part of.                                                      | [CreativeWork](./CreativeWork.html) |
| keywords                 | `codec<csi>` & `array<`​`string`​`>`                                                           | Keywords or tags used to describe this content. Multiple entries in a keywords list are typically delimited by commas.  | [CreativeWork](./CreativeWork.html) |
| licenses                 | `array<`​`string<uri>` \| [`CreativeWorkTypes`](./CreativeWorkTypes.html)​`>`                  | License documents that applies to this content, typically indicated by URL.                                             | [CreativeWork](./CreativeWork.html) |
| meta                     | `object`                                                                                       | Metadata associated with this item.                                                                                     | [Entity](./Entity.html)             |
| name                     | `string`                                                                                       | The name of the item.                                                                                                   | [Thing](./Thing.html)               |
| parts                    | `array<`​[`CreativeWorkTypes`](./CreativeWorkTypes.html)​`>`                                   | Elements of the collection which can be a variety of different elements, such as Articles, Datatables, Tables and more. | [CreativeWork](./CreativeWork.html) |
| publisher                | [`Person`](./Person.html) \| [`Organization`](./Organization.html)                             | A publisher of the CreativeWork.                                                                                        | [CreativeWork](./CreativeWork.html) |
| references               | `array<`​`string` \| [`CreativeWorkTypes`](./CreativeWorkTypes.html)​`>`                       | References to other creative works, such as another publication, web page, scholarly article, etc.                      | [CreativeWork](./CreativeWork.html) |
| text                     | `string`                                                                                       | The textual content of this creative work.                                                                              | [CreativeWork](./CreativeWork.html) |
| url                      | `string<uri>`                                                                                  | The URL of the item.                                                                                                    | [Thing](./Thing.html)               |
| version                  | `string` \| `number`                                                                           | The version of the creative work.                                                                                       | [CreativeWork](./CreativeWork.html) |

:::

# HACK

### Link example json->html convert

```json import=ex12
{
  "type": "Link",
  "content": ["Stencila’s website"],
  "target": "https://stenci.la"
}
```

```html export=ex12
<a href="https://stenci.la">Stencila’s website</a>
```

### article example yaml->html convert

```yaml import=ex13
type: Article
title: Recherches sur les substances radioactives
authors:
  - type: Person
    honorificPrefix: Dr
    givenNames:
      - MarieYAML
      - lmYWSkłodowska
    familyNames:
      - CurieYAM
    honorificSuffix: PhD
```

#### yaml -> json

```json export=ex13
{
  "type": "Article",
  "title": "Recherches sur les substances radioactives",
  "authors": [
    {
      "type": "Person",
      "honorificPrefix": "Dr",
      "givenNames": ["MarieYAML", "lmYWSkłodowska"],
      "familyNames": ["CurieYAM"],
      "honorificSuffix": "PhD"
    }
  ]
}
```

#### yaml -> html

```html export=ex13
<article itemtype="https://schema.org/Article" itemscope="true">
  <h1 itemprop="headline">Recherches sur les substances radioactives</h1>
  <div>
    <ol class="authors">
      <li
        itemtype="https://schema.org/Person"
        itemscope="true"
        itemprop="author"
      >
        <span itemprop="name" content="MarieYAML lmYWSkłodowska CurieYAM"
          ><span itemprop="givenName">MarieYAML lmYWSkłodowska</span
          ><span itemprop="familyName">CurieYAM</span></span
        >
      </li>
    </ol>
  </div>
</article>
```

### Article example json->html convert

```json import=ex22
{
  "type": "Article",
  "title": "Recherches sur les substances radioactives",
  "authors": [
    {
      "type": "Person",
      "honorificPrefix": "Dr",
      "givenNames": ["MarieYAML", "lmYWSkłodowska"],
      "familyNames": ["CurieYAM"],
      "honorificSuffix": "PhD"
    }
  ]
}
```

```html export=ex22
<article itemtype="https://schema.org/Article" itemscope="true">
  <h1 itemprop="headline">Recherches sur les substances radioactives</h1>
  <div>
    <ol class="authors">
      <li
        itemtype="https://schema.org/Person"
        itemscope="true"
        itemprop="author"
      >
        <span itemprop="name" content="MarieYAML lmYWSkłodowska CurieYAM"
          ><span itemprop="givenName">MarieYAML lmYWSkłodowska</span
          ><span itemprop="familyName">CurieYAM</span></span
        >
      </li>
    </ol>
  </div>
</article>
```

##

# Examples

## Simple

In its most basic form, an `Article` requires a `title` and a list of `authors`.

```json import=simple
{
  "type": "Article",
  "title": "Recherches sur les substances radioactives",
  "authors": [
    {
      "type": "Person",
      "honorificPrefix": "Dr",
      "givenNames": ["Marie", "Skłodowska"],
      "familyNames": ["Curie"],
      "honorificSuffix": "PhD"
    }
  ],
  "content": [
    "Le présent travail a pour but d'exposer les recherches que je poursuis depuis"
  ]
}
```

## More Complex

In addition to the properties demonstrated above, `content` is usually a key property to most articles. The `content` property contains a list of [`Node`s](/schema/Node), meaning it can be contain any other valid node type.

```json import=complex
{
  "type": "Article",
  "title": "Introducing eLife’s first computationally reproducible article",
  "url": "https://elifesciences.org/labs/ad58f08d/introducing-elife-s-first-computationally-reproducible-article",
  "authors": ["Giuliano Maciocci", "Michael Aufreiter", "Nokome Bentley"],
  "content": [
    {
      "type": "Paragraph",
      "content": [
        "In September 2017 eLife announced the start of the Reproducible Document Stack (RDS) project, a collaboration between Substance, Stencila and eLife to support the development of an open-source technology stack aimed at enabling researchers to publish reproducible manuscripts through online journals. Reproducible manuscripts enrich the traditional narrative of a research article with code, data and interactive figures that can be executed in the browser, downloaded and explored, giving readers a direct insight into the methods, algorithms and key data behind the published research."
      ]
    },
    {
      "type": "Paragraph",
      "content": [
        "Today eLife, in collaboration with ",
        {
          "type": "Link",
          "target": "http://substance.io/",
          "content": ["Substance"]
        },
        ", ",
        {
          "type": "Link",
          "target": "https://stenci.la/",
          "content": ["Stencila"]
        },
        " and Tim Errington, Director of Research ar the Center for Open Science, US, published its ",
        {
          "type": "Link",
          "target": "https://elifesci.org/reproducible-example",
          "content": ["first reproducible article"]
        },
        ", based on one of Errington’s papers in the Reproducibility Project: Cancer Biology. This reproducible version of the article showcases some of what’s possible with the new RDS tools, and we invite researchers to explore the newly available opportunities to tell their story."
      ]
    }
  ]
}
```

# Encodings

include: ../docs/type-encodings-intro.md
:::
This section describes common encodings for this node type. These samples are generated from the above examples by [Encoda](https://stencila.github.io/encoda), but you can also author them in each format.
:::

These examples, based on [Marie Curie](https://en.wikipedia.org/wiki/Marie_Curie), illustrate alternative ways for specifying an `Article`.

## JATS

`Article` is analogous, and structurally similar to, the JATS [`<article>`](https://jats.nlm.nih.gov/articleauthoring/tag-library/1.2/element/article.html) element:

> A journal article `<article>` may be divided into three parts:
>
> 1.  the `<front>` (the metadata or header information for the article, such as the title and the published date);
> 2.  the `<body>` (textual and graphical content of the article); and
> 3.  any `<back>` (ancillary information such as a glossary, reference list, or appendix).

In JATS the `<body>` element is the "Main textual portion of the document that conveys the narrative content."

### JATS Simple Example

```jats
<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE article PUBLIC "-//NLM//DTD JATS (Z39.96) Journal Archiving and Interchange DTD v1.1 20151215//EN"  "JATS-archivearticle1.dtd">
<article xmlns:mml="http://www.w3.org/1998/Math/MathML" xmlns:xlink="http://www.w3.org/1999/xlink">
<front>
<article-meta>
<title-group>
<article-title>Recherches sur les substances radioactives</article-title>
</title-group>
<pub-date pub-type="epub">
<string-date>true</string-date>
</pub-date>
</article-meta>
</front>
<body>
<graphic mimetype="image" mime-subtype="png" xlink:href="/private/var/folders/12/6r72hb0d3_q6xpdc47l1yr680000gn/T/ddb2e085c4aa5a553d20317fdd45e2a1.png" xlink:title="string" />
</body>
<back><fn-group>
</fn-group>
</back>
</article>
```

### JATS Complex Example

```jats
<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE article PUBLIC "-//NLM//DTD JATS (Z39.96) Journal Archiving and Interchange DTD v1.1 20151215//EN"  "JATS-archivearticle1.dtd">
<article xmlns:mml="http://www.w3.org/1998/Math/MathML" xmlns:xlink="http://www.w3.org/1999/xlink">
<front>
<article-meta>
<title-group>
<article-title>Introducing eLife’s first computationally reproducible article</article-title>
</title-group>
<pub-date pub-type="epub">
<string-date>true</string-date>
</pub-date>
</article-meta>
</front>
<body>
<p>In September 2017 eLife announced the start of the Reproducible Document Stack (RDS) project, a collaboration between Substance, Stencila and eLife to support the development of an open-source technology stack aimed at enabling researchers to publish reproducible manuscripts through online journals. Reproducible manuscripts enrich the traditional narrative of a research article with code, data and interactive figures that can be executed in the browser, downloaded and explored, giving readers a direct insight into the methods, algorithms and key data behind the published research.</p>
<p>Today eLife, in collaboration with <ext-link ext-link-type="uri" xlink:href="http://substance.io/">Substance</ext-link>, <ext-link ext-link-type="uri" xlink:href="https://stenci.la/">Stencila</ext-link> and Tim Errington, Director of Research ar the Center for Open Science, US, published its <ext-link ext-link-type="uri" xlink:href="https://elifesci.org/reproducible-example">first reproducible article</ext-link>, based on one of Errington’s papers in the Reproducibility Project: Cancer Biology. This reproducible version of the article showcases some of what’s possible with the new RDS tools, and we invite researchers to explore the newly available opportunities to tell their story.</p>
</body>
<back><fn-group>
</fn-group>
</back>
</article>
```

## mdast

`Article.body` is analogous to the mdast [`Root`](https://github.com/syntax-tree/mdast#root) node type which "represents a document":

> Root can be used as the root of a tree, never as a child. Its content model is not limited to top-level content, but can contain any content with the restriction that all content must be of the same category.

### Markdown Simple Example

```markdown export=simple
---
title: Recherches sur les substances radioactives
authors:
  - type: Person
    honorificPrefix: Dr
    givenNames:
      - Marie
      - Skłodowska
    familyNames:
      - Curie
    honorificSuffix: PhD
---

Le présent travail a pour but d'exposer les recherches que je poursuis depuis
```

### Markdown Complex Example

```markdown export=complex
---
title: Introducing eLife’s first computationally reproducible article
url: >-
  https://elifesciences.org/labs/ad58f08d/introducing-elife-s-first-computationally-reproducible-article
authors:
  - givenNames:
      - Giuliano
    familyNames:
      - Maciocci
    type: Person
  - givenNames:
      - Michael
    familyNames:
      - Aufreiter
    type: Person
  - givenNames:
      - Nokome
    familyNames:
      - Bentley
    type: Person
---

In September 2017 eLife announced the start of the Reproducible Document Stack (RDS) project, a collaboration between Substance, Stencila and eLife to support the development of an open-source technology stack aimed at enabling researchers to publish reproducible manuscripts through online journals. Reproducible manuscripts enrich the traditional narrative of a research article with code, data and interactive figures that can be executed in the browser, downloaded and explored, giving readers a direct insight into the methods, algorithms and key data behind the published research.

Today eLife, in collaboration with [Substance](http://substance.io/), [Stencila](https://stenci.la/) and Tim Errington, Director of Research ar the Center for Open Science, US, published its [first reproducible article](https://elifesci.org/reproducible-example), based on one of Errington’s papers in the Reproducibility Project: Cancer Biology. This reproducible version of the article showcases some of what’s possible with the new RDS tools, and we invite researchers to explore the newly available opportunities to tell their story.
```

## OpenDocument

`Article` is analogous to the OpenDocument `<office:document>` element is the root element in a single**\*** OpenDocument XML document:

> The [`<office:document>`](http://docs.oasis-open.org/office/v1.2/os/OpenDocument-v1.2-os-part1.html#__RefHeading__1414998_253892949) element is the root element of a document in OpenDocument format which is represented as a single XML document. It contains the entire document.

A `<office:document>` has child elements,

- meta-data related `<office:meta>`, `<office:settings>`
- styles etc `<office:scripts>`, `<office:font-face-decls>`, `<office:styles>`, `<office:automatic-styles>`, `<office:master-styles>`
- content `<office:body>`

`Article.body` is analogous to `<office:body>` which can have child elements like `<office:drawing>`, `<office:presentation>`, `<office:spreadsheet>`, `<office:text>`. The primary difference is that `Article.body` can only contain named `Sheet`s (which themselves contain text or spreadsheet type documents).

Other properties of `Article` are analogous to those in [`<office:meta>`](http://docs.oasis-open.org/office/v1.2/os/OpenDocument-v1.2-os-part1.html#__RefHeading__1415014_253892949).

**\***: In a multi-XML document OpenDocument properties are group together e.g. content in `<office:document-content>` and styles in `<office:document-styles>`.

### OpenDocument Simple Example

This [`odt`](article-simple-ex1.out.odt) file was generated from the simple example.

### OpenDocument Complex Example

This [`odt`](article-complex-ex1.out.odt) file was generated from the complex example.
