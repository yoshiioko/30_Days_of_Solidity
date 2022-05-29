const DayFourPrimitiveDataTypes = artifacts.require(
  "DayFourPrimitiveDataTypes"
);

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("DayFourPrimitiveDataTypes", function (accounts) {
  beforeEach(async function () {
    this.contract = await DayFourPrimitiveDataTypes.new();
  });

  it("Change isHappy", async function () {
    await this.contract.setIsHappy(false);

    assert.equal(await this.contract.isHappy(), false);
  });

  it("Change myAge", async function () {
    await this.contract.setMyAge(23);

    assert.equal(await this.contract.myAge(), 23);
  });

  it("Change savingsBalance", async function () {
    await this.contract.setSavingsBalance(1000);

    assert.equal(await this.contract.savingsBalance(), 1000);
  });

  it("Verify owner", async function () {
    assert.equal(await this.contract.owner(), accounts[0]);
  });
});
