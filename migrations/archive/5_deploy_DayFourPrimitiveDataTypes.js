const DayFourPrimitiveDataTypes = artifacts.require(
  "DayFourPrimitiveDataTypes"
);

module.exports = function (deployer) {
  deployer.deploy(DayFourPrimitiveDataTypes);
};
