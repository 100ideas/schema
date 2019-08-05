import Ajv from 'ajv'
import betterAjvErrors from 'better-ajv-errors'
import fs from 'fs-extra'
import globby from 'globby'
import path from 'path'
import Schema from '../ts/bindings/schema.d'

const readSchema = async (type: string): Promise<Schema> => {
  return await fs.readJSON(
    path.join(__dirname, '..', 'built', type + '.schema.json')
  )
}

/**
 * Check that the `built/*.schema.json` files, generated from `schema/*.schema.yaml` files,
 * are valid JSON Schemas.
 */
test('schemas are valid', async () => {
  const ajv = new Ajv({ jsonPointers: true })
  const metaSchema = require('ajv/lib/refs/json-schema-draft-07.json')
  const validate = ajv.compile(metaSchema)

  const files = await globby(
    path.join(__dirname, '..', 'built', '*.schema.json')
  )
  for (const file of files) {
    const schema = await fs.readJSON(file)
    if (!validate(schema)) {
      const message = betterAjvErrors(metaSchema, schema, validate.errors, {
        format: 'cli',
        indent: 2
      })
      console.log(message)
      throw new Error(`💣  Oh, oh, ${file} is invalid`)
    }
  }
})

test('inheritance', async () => {
  const thing = await readSchema('Thing')
  const person = await readSchema('Person')

  // All `Thing` properties are in `Person` properties
  expect(
    Object.keys(thing.properties || {}).some(
      name => !Object.keys(person.properties || {}).includes(name)
    )
  ).toBe(false)

  // All `Thing` required properties in `Person` required properties
  expect(
    (thing.required || []).some(name => !(person.required || []).includes(name))
  ).toBe(false)

  // All `Thing` property aliases in `Person` property aliases
  expect(
    Object.keys(thing.propertyAliases || {}).some(
      name => !Object.keys(person.propertyAliases || {}).includes(name)
    )
  ).toBe(false)
})
