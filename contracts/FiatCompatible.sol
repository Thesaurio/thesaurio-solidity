pragma solidity 0.4.23;

import "./lib/PricesInterface.sol";


contract FiatCompatible {

    PricesInterface internal fiatPrices;

    constructor(address fiatPricesAddress) public {
        fiatPrices = PricesInterface(fiatPricesAddress);
    }

}
