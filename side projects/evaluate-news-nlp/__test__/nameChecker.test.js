/**
 * @jest-environment jsdom
 */

import { checkForName } from '../src/client/js/nameChecker'

describe('Test function "checkForName()" exist' , () => {
  test('Return true', () => {
      expect(checkForName).toBeDefined();
  });
});

describe('Test function "checkForName()" is a function' , () => {
  test("'It's a function", () => {
      expect(typeof checkForName).toBe("function");
  });
});