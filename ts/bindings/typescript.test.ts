/**
 * Tests of the generation of Typescript language bindings
 *
 * This test suite uses file snapshots. During development
 * it can be useful to update the snapshots on the fly for manual inspection:
 *
 * ```bash
 * npx jest typescript.test.ts --watch --updateSnapshot
 * ```
 */

import * as typescript from 'typescript'
import { build, typeGenerator, unionGenerator } from './typescript'
import { schema, snapshot } from '../__tests__/helpers'

test('generators', async () => {
  expect(typeGenerator(await schema('Thing.schema.json'))).toMatchFile(
    snapshot(__dirname, 'Thing.ts')
  )
  expect(typeGenerator(await schema('Person.schema.json'))).toMatchFile(
    snapshot(__dirname, 'Person.ts')
  )

  expect(unionGenerator(await schema('BlockContent.schema.json'))).toMatchFile(
    snapshot(__dirname, 'BlockContent.ts')
  )
})

/**
 * Build `dist/types.ts` and compile it using Typescript to
 * check that there are no errors.
 */
test('build', async () => {
  const file = await build()
  const program = typescript.createProgram([file], {})
  const diagnostics = typescript
    .getPreEmitDiagnostics(program)
    .map(diagnostic => {
      return diagnostic.messageText
    })
  expect(diagnostics).toEqual([])
})
