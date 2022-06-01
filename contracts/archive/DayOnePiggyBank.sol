// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract DayOnePiggyBank {
  address owner;
  event DepositEvent(address depositEvent, uint depositAmount);
  event WithdrawEvent(address withdrawAccount, uint withdrawAmount);
  event DestroyEvent(string description);

  constructor() {
    owner = msg.sender;
  }

  modifier isOwner {
    require(msg.sender == owner);
    _;
  }

  function getPiggyBankBalance() external view returns (uint) {
    return address(this).balance;
  }

  function deposit() external payable isOwner {
    require(msg.value > 0, "Deposits must be greater than 0!");
    emit DepositEvent(owner, msg.value);
  }

  function withdraw() external isOwner {
    (bool sent, ) = owner.call{value: address(this).balance}("");
    require(sent, "Withdraw process failed!");
    emit WithdrawEvent(owner, address(this).balance);
  }

  function destroy() external isOwner {
    emit DestroyEvent("Owner has deleted the contract from the blockchain");
    selfdestruct(payable(owner));
  }

  receive() external payable {}

  fallback() external payable {}
}
