// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract DayOnePiggyBank is Ownable {
  event WithdrawEvent(address withdrawAccount, uint withdrawAmount);

  constructor() {
  }

  function getPiggyBankBalance() external view onlyOwner returns (uint) {
    return address(this).balance;
  }

  function deposit() external payable onlyOwner {
    require(msg.value > 0, "Deposits must be greater than 0!");
  }

  function withdraw() external onlyOwner {
    address contractOwner = this.owner();
    uint contractBalance = address(this).balance;

    (bool sent, ) = contractOwner.call{value: contractBalance}("");
    require(sent, "Withdraw process failed!");
    emit WithdrawEvent(contractOwner, contractBalance);
  }

  function destroy() external onlyOwner {}

  receive() external payable {}

  fallback() external payable {}
}
