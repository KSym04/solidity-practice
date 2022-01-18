// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Variables {
    uint public myUint;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }
}