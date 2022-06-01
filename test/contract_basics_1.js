const ContractBasics_1 = artifacts.require("ContractBasics_1");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("ContractBasics_1", function (/* accounts */) {
  beforeEach(async function () {
    this.contract = await ContractBasics_1.new();
  });

  it("Verify contract greeting", async function () {
    return assert.equal(await this.contract.sayHello(), "Hello");
  });
});
