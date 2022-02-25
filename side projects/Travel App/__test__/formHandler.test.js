/**
 * @jest-environment jsdom
 */

import { handleSubmit } from '../src/client/js/formHandler'

describe('Test function "handleSubmit()" exist' , () => {
  test('Return true', async () => {
      expect(handleSubmit).toBeDefined();
  });
});

describe('Test function "handleSubmit()" is a function' , () => {
  test("'It's a function", async () => {
      expect(typeof handleSubmit).toBe("function");
  });
});
