const DayThreeSimpleCalculator = artifacts.require("DayThreeSimpleCalculator");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("DayThreeSimpleCalculator", function (/* accounts */) {
  beforeEach(async function () {
    this.contract = await DayThreeSimpleCalculator.new();
  });

  it("Verify 3 + 2 = 5", async function () {
    let result = await this.contract.addition(3, 2);

    assert.equal(result, 5);
  });

  it("Verify 3 - 2 = 1", async function () {
    let result = await this.contract.subtraction(3, 2);

    assert.equal(result, 1);
  });

  it("Verify 3 * 2 = 6", async function () {
    let result = await this.contract.multiply(3, 2);

    assert.equal(result, 6);
  });

  it("Verify 3 / 2 = 1", async function () {
    let result = await this.contract.division(3, 2);

    assert.equal(result, 1);
  });

  it("Verify 3 * 3 = 9", async function () {
    let result = await this.contract.square(3);

    assert.equal(result, 9);
  });
});
