pragma solidity ^0.4.23;


contract KycRegistryInterface {
    /**
    * @dev Returns true if an address is known (KYC Passed + Wallet linked on Thesaurio)
    */
    function isAddressCleared(address _address) public view returns (bool);
}

