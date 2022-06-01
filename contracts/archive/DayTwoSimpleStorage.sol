// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract DayTwoSimpleStorage is Ownable {
  string internalMessage;

  constructor() {
    internalMessage = "Default message";
  }

  function setMessage(string memory _message) external onlyOwner {
    internalMessage = _message;
  }

  function getMessage() external view returns (string memory) {
    return internalMessage;
  }
}
