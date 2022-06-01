// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// Source: https://solidity-by-example.org/hacks/re-entrancy

contract DayFourPrimitiveDataTypes {
  bool public isHappy = true;
  uint public myAge = 0;
  int public savingsBalance = -1000;
  address public owner;

  constructor() {
    owner = msg.sender;
  }

  function setIsHappy(bool _status) external {
    isHappy = _status;
  }

  function setMyAge(uint _newAge) external {
    myAge = _newAge;
  }

  function setSavingsBalance(int _newBalance) external {
    savingsBalance = _newBalance;
  }
}
