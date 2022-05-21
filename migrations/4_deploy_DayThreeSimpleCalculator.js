const DayThreeSimpleCalculator = artifacts.require("DayThreeSimpleCalculator");

module.exports = function (deployer) {
  deployer.deploy(DayThreeSimpleCalculator);
};
