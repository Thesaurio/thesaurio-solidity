pragma solidity ^0.4.23;


contract PricesInterface {
    /**
    * @dev Returns the price of 0.01 EUR in WEI
    */
    function eurPrice() public view returns (uint256);

    /**
    * @dev Returns the price of 0.01 USD in WEI
    */
    function usdPrice() public view returns (uint256);

    /**
    * @dev Returns the price of 0.01 CNY in WEI
    */
    function cnyPrice() public view returns (uint256);

    /**
    * @dev Returns the price of 0.01 JPY in WEI
    */
    function jpyPrice() public view returns (uint256);

    /**
    * @dev Returns the price of 0.01 GBP in WEI
    */
    function gbpPrice() public view returns (uint256);

    /**
    * @dev Returns the price of 0.01 RUB in WEI
    */
    function rubPrice() public view returns (uint256);
}
