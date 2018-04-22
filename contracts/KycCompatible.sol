pragma solidity ^0.4.21;

import './lib/KycRegistryInterface.sol';

contract KycCompatible {
  KycRegistryInterface kycRegistry;

  constructor(KycRegistryInterface _kycRegistryAddress) public {
    kycRegistry = KycRegistryInterface(_kycRegistryAddress);
  }
}
