pragma solidity ^0.4.23;


library MoneyOperations {

    /**
    * @dev Returns the Ethereum standard order of mangitude (18 decimals)
    */
    uint256 private constant ETHER_PRECISION = 10 ** 18;

    /**
    * @dev Returns the Fiat currency standard order of mangitude (2 decimals)
    */
    uint256 private constant FIAT_PRECISION = 10 ** 2;

    /**
    * @dev Divides two numbers with 18 decimals, represented as uints (e.g. ether or token values)
    */
    function ethdiv(uint256 x, uint256 y) internal pure returns (uint256 z) {
        // Put x to the 36th order of magnitude, so natural division will put it back to the 18th
        // Adding y/2 before putting x back to the 18th order of magnitude is necessary to force the
        // EVM to round up instead of down
        z = _add(_mul(x, ETHER_PRECISION), y / 2) / y;
    }

    /**
    * @dev Divides two numbers with 2 decimals, represented as uints (e.g. fiat)
    */
    function fiatdiv(uint256 x, uint256 y) internal pure returns (uint256 z) {
        // Put x to the 4th order of magnitude, so natural division will put it back to the 2th
        // Adding y/2 before putting x back to the 18th order of magnitude is necessary to force the
        // EVM to round up instead of down
        z = _add(_mul(x, FIAT_PRECISION), y / 2) / y;
    }

    /**
    * @dev Adds two numbers, throws on overflow.
    */
    function _add(uint256 a, uint256 b) internal pure returns (uint256 c) {
        c = a + b;
        assert(c >= a);
        return c;
    }

    /**
    * @dev Multiplies two numbers, throws on overflow.
    */
    function _mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
        if (a == 0) { return 0; }
        c = a * b;
        assert(c / a == b);
        return c;
    }

}
