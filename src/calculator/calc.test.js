import { sum } from './calc.js'

describe('with calculator', () => {
  describe('when adding', () => {
    test('2 + 2 = 4', () => {
      expect(sum(2, 2)).toBe(4)
    })
  })
})
