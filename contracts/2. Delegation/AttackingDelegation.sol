// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Delegation.sol";

contract AttackingDelegation {
    address public contractAddress;
    Delegation public delegationContract;

    constructor(address _contractAddress) {
        contractAddress = _contractAddress;
        delegationContract = Delegation(contractAddress);
    }

    function hackContract() external {
        // Code me!
        // copied out to silence errors in compile for not using response;
        // contractAddress.call(abi.encodeWithSignature("pwn()"));
    }
}
