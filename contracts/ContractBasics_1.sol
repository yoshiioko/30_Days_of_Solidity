// 1. The first line of a contract should start with a comment specifying its license. A full list of allowed
// licenses can be found here: https://spdx.org/licenses/
// In this test contract I will use the MIT license
// SPDX-License-Identifier: MIT

// 2. Pragmas enable certain compiler features or checks. This should be the second line of a contract. This 
// defines what version of the compiler to use when compiling the contract. This contract specifies that version
// 0.8.13 should be used.
pragma solidity 0.8.13;

// 3. Other contracts can be included into our contract via the use of import. Here is an example of how to include
// the OpenZeppelin contract called Ownable:
import "@openzeppelin/contracts/access/Ownable.sol";

// 4. Use double forward slashes to create single-line comments. I've already done that a few times in this contract.
// Here is a single-line comment!

/* 
  5. We can also define 
  multi-line comments 
  in this way.
*/

// 6. Solidity uses NatSpec comments to document contracts and their functions. For a full explanation for the format
// please go here: https://docs.soliditylang.org/en/v0.8.14/natspec-format.html#natspec
// I will provide NatSpec comments on my contract below

// 7. This is one example of how to document a Contract.
/// @author Adrian Cardoza
/// @title A basic contract for tutorial purposes
// 8. Use "contract" to define a new contract called "ContractBasics_1". It's similar to how classes are 
// defined in other languages
contract ContractBasics_1 {

  // 9. This is a how State Variables are defined. These are values that are permanently stored on the blockchain
  string greeting = "Hello";

  // 10. A contructor should be defined for each contract. It is called once and only when the contract is 
  // first created.
  /// @dev Here we defined an empty constructor
  constructor() {
  }

  // 11. Function are defined using the "function" keyword. This function returns the string value of the state
  // variable on this contract.
  /// @dev Returns a string greeting to the caller
  function sayHello() external view returns (string memory) {
    return greeting;
  }
}
