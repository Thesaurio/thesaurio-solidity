pragma solidity ^0.4.23;


contract ThesaurioPaymentCompatible {

    address internal thesaurioPaymentOracle;

    constructor(address _thesaurioPaymentOracle) {
        thesaurioPaymentOracle = _thesaurioPaymentOracle;
    }

    /**
    * @dev Executed by Thesaurio platform when a payment is made in another currency. ***DO NOT OVERRIDE***
    *      (see _otherCurrencyPayment for overriding behavior)
    * @param _beneficiary The wallet that will receive the tokens linked to this payment.
    * @param _value The value sent in the contract unit : USD if token price in USD, WEI if token price in Ether etc...
    */
    function otherCurrencyPayment(
        address _beneficiary,
        uint256 _value
    ) public {
        require(msg.sender == thesaurioPaymentOracle);
        _otherCurrencyPayment(_beneficiary, _value);
    }

    /**
    * @dev Executed by Thesaurio platform when a payment is made in another currency.
    * @param _beneficiary The wallet that will receive the tokens linked to this payment.
    * @param _value The value sent in the contract unit : USD if token price in USD, WEI if token price in Ether etc...
    */
    function _otherCurrencyPayment(
        address _beneficiary,
        uint256 _value
    ) internal;

}
