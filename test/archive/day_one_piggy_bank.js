const DayOnePiggyBank = artifacts.require("DayOnePiggyBank");
const {
  expectEvent, // Assertions for emitted events
} = require("@openzeppelin/test-helpers");

contract("DayOnePiggyBank", function (accounts) {
  const [owner, nonOwner] = accounts;

  beforeEach(async function () {
    this.contract = await DayOnePiggyBank.new();
  });

  it("Initial contract balance is Zero", async function () {
    let balance = await this.contract.getPiggyBankBalance();
    assert.equal(balance, 0);
  });

  it("Deposit 1 Ether to Piggy Bank", async function () {
    let depositValue = web3.utils.toWei("1", "ether");
    await this.contract.deposit({ from: owner, value: depositValue });

    let balance = await this.contract.getPiggyBankBalance();
    assert.equal(balance, depositValue);
  });

  it("Withdraw all funds from Piggy Bank", async function () {
    let depositValue = web3.utils.toWei("1", "ether");
    await this.contract.sendTransaction({
      from: nonOwner,
      value: depositValue,
    });

    let oldBalance = await web3.eth.getBalance(owner);
    await this.contract.withdraw({ from: owner });
    let newBalance = await web3.eth.getBalance(owner);

    assert.notEqual(oldBalance, newBalance);
  });

  it("Destory the contract from the blockchain", async function () {
    const receipt = await this.contract.destroy({ from: owner });
    expectEvent(receipt, "DestroyEvent");
  });
});
