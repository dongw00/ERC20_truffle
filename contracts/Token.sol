/*
* ERC-20 Token 만들기 실습
*/

pragma solidity ^0.5.2;

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';

contract Token is ERC20 {
  string public constant name = "bitToken";
  string public constant symbol = "BTT";
  uint public constant decimals = 18;
  uint public constant INITIAL_SUPPLY = 1000 * (10 ** decimals);

  constructor() public {
    _mint(msg.sender, INITIAL_SUPPLY);
  }
}