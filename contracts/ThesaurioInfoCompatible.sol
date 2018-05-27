pragma solidity ^0.4.23;


contract ThesaurioInfoCompatible {

    /**
    * @dev Returns needed information by Thesaurio to update its database field every 5 minutes
    */
    function distributionInfo() public view returns (
        uint256 minimumContribution,
        uint256 maximumContribution,
        uint256 currentTokenPrice,
        uint256 remainingSupply
    );

}
