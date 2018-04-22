pragma solidity ^0.4.21;

library MoneyOperations {
  /**
  * @dev Divides two numbers with 18 decimals, represented as uints (e.g. ether or token values)
  */
  uint constant ETHER_PRECISION = 10 ** 18;
  function ethdiv(uint x, uint y) internal pure returns (uint z) {
    // Put x to the 36th order of magnitude, so natural division will put it back to the 18th
    // Adding y/2 before putting x back to the 18th order of magnitude is necessary to force the EVM to round up instead of down
    z = _add(_mul(x, ETHER_PRECISION), y / 2) / y;
  }

  /**
  * @dev Divides two numbers with 2 decimals, represented as uints (e.g. fiat)
  */
  uint constant FIAT_PRECISION = 10 ** 2;
  function fiatdiv(uint x, uint y) internal pure returns (uint z) {
    // Put x to the 4th order of magnitude, so natural division will put it back to the 2th
    // Adding y/2 before putting x back to the 18th order of magnitude is necessary to force the EVM to round up instead of down
    z = _add(_mul(x, FIAT_PRECISION), y / 2) / y;
  }

  function _add(uint256 a, uint256 b) internal pure returns (uint256 c) {
    c = a + b;
    assert(c >= a);
    return c;
  }

  function _mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
    if (a == 0) {
      return 0;
    }
    c = a * b;
    assert(c / a == b);
    return c;
  }
}
