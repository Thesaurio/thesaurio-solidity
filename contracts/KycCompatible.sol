pragma solidity 0.4.23;

import "./lib/KycRegistryInterface.sol";


contract KycCompatible {

    KycRegistryInterface internal kycRegistry;

    constructor(address _kycRegistryAddress) public {
        kycRegistry = KycRegistryInterface(_kycRegistryAddress);
    }

}

