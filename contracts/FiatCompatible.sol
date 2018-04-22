pragma solidity ^0.4.21;

import './lib/PricesInterface.sol';

contract FiatCompatible {
  PricesInterface fiatPrices;

  constructor(address fiatPricesAddress) public {
    fiatPrices = PricesInterface(fiatPricesAddress);
  }
}
