const { expectRevert } = require("@openzeppelin/test-helpers");

const DayTwoSimpleStorage = artifacts.require("DayTwoSimpleStorage");

contract("DayTwoSimpleStorage", function (accounts) {
  const [owner, nonOwner] = accounts;

  beforeEach(async function () {
    this.contract = await DayTwoSimpleStorage.new();
  });

  it("View default message", async function () {
    let msg = await this.contract.getMessage();
    assert.equal(msg, "Default message");
  });

  it("Set a new message", async function () {
    await this.contract.setMessage("Hello World", { from: owner });
    let msg = await this.contract.getMessage();
    assert.equal(msg, "Hello World");
  });

  it("Unauthorized set a new message", async function () {
    await expectRevert.unspecified(
      this.contract.setMessage("Not authorized to do this!", { from: nonOwner })
    );
  });
});
