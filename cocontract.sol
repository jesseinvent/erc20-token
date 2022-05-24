// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

// Indicating InventToken is an instance of ERC20 contract
contract InventToken is ERC20 {
    // InventToken constructor and calling ERC20 constructor
    // Passing _name & _symbol as parameters
    // name parameters signifies the name of the cryptocurrency e.g Ethereum
    // symbol indicates the symbol of the cryptocurrency e.g ETH
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol){
        // _mint is an internal function within the ERC20 standard contract, which
        // means it can only be called by the contract itself.
        // ERC20 tokens by default work with 18 decimal places, i.e 1 full InventToken
        // is represented with as `10 ^ 18`
        _mint(msg.sender, 10 * 10 ** 18);
    }
}