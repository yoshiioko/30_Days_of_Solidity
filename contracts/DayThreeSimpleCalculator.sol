// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract DayThreeSimpleCalculator {
  constructor() {
  }

  function addition(uint x, uint y) external pure returns (uint) {
    return x + y;
  }

  function subtraction(uint x, uint y) external pure returns (uint) {
    return x - y;
  }

  function multiply(uint x, uint y) external pure returns (uint) {
    return x * y;
  }

  function division(uint x, uint y) external pure returns (uint) {
    return x / y;
  }

  function square(uint x) external pure returns (uint) {
    return x * x;
  }
}
