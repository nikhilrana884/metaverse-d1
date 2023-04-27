// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Migrations {
    address public owner = msg.sender;
    uint256 public migration;

    modifier restricted() {
        require(
            msg.sender == owner,
            "Restricted to owner."
        );
        _;
    }

    function setCompleted(uint256 completed) public restricted {
        migration = completed;
    }
}