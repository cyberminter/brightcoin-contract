// A smart coin for Bright Defi.
/*

This coin was made to better the etherem classic ecosystem. We hope you enjoy it and it is useful to you. 

*/

pragma solidity ^0.8.0;


// SPDX-License-Identifier: GPL3


// import for the openzeppelin contracts
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BrightCoin is ERC20 {

    // Token name
   string _tokenName = "Bright Coin";

   // Token ticker symbol
   string _tokenSymbol = "BLUB";

   // Total minted tokens
   uint256 _totalSupply = 18000;

   // Decimal place
   uint8 _setDecimals = 3;

    constructor () public ERC20(_tokenName, _tokenSymbol, _setDecimals) {
        _mint(msg.sender, _totalSupply* (10 ** uint256(decimals())));
    }


}
