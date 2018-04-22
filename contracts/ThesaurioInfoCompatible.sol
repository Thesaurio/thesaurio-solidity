pragma solidity ^0.4.21;

contract ThesaurioInfoCompatible {
  function distributionInfo() public constant returns (
    uint minimumContribution,
    uint maximumContribution,
    uint currantTokenPrice,
    uint remainingSupply
  );
}
