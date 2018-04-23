pragma solidity ^0.4.21;

contract PricesInterface {
  event PricesUpdated(
    uint256 updateTimestamp,
    uint256 eurPrice,
    uint256 usdPrice,
    uint256 cnyPrice,
    uint256 jpyPrice,
    uint256 gbpPrice,
    uint256 rubPrice
  );

  function eurPrice() public view returns (uint256);
  function usdPrice() public view returns (uint256);
  function cnyPrice() public view returns (uint256);
  function jpyPrice() public view returns (uint256);
  function gbpPrice() public view returns (uint256);
  function rubPrice() public view returns (uint256);
}
