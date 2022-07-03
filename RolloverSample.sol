// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1;

contract MyContract {
    uint8 public myUint;

    function decrement() public {
        myUint--;
    }

    function increment() public {
        myUint++;
    }
}
