// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;

    address public lastUser;

    event updateCount(uint256 newCount);

    function increment() public {
        number++;
        emit updateCount(number);
        lastUser = msg.sender;
    }

    function decrement() public {
        number--;
        emit updateCount(number);
        lastUser = msg.sender;
    }

    function getNumber() public view returns (uint256) {
        return number;
    }

    function getLastUser() public view returns (address) {
        return lastUser;
    }
}
