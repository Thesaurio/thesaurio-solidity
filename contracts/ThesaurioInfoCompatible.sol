pragma solidity ^0.4.21;

contract ThesaurioInfoCompatible {
  function distributionInfo() public constant returns (
    uint256 minimumContribution,
    uint256 maximumContribution,
    uint256 currentTokenPrice,
    uint256 remainingSupply
  );
}
