pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract SoloCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function SoloCoin(address _owner)  UpgradeableToken(_owner) {
    name = "SoloCoin";
    symbol = "SLO";
    totalSupply = 100000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}