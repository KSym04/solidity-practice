// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Variables {
    // Uint 256
    uint256 public myUint;

    function setMyUint(uint256 _myUint) public {
        myUint = _myUint;
    }

    // Boolean
    bool public myBool;

    function setMyBool(bool _myBool) public {
        myBool = _myBool;
    }

    // Uint8
    uint8 public myUint8;

    function incrementUint() public {
        myUint8++;
    }

    function decrementUint() public {
        myUint8--;
    }

    // Addresses
    address public myAddress;

    function setMyAddress(address _myAddress) public {
        myAddress = _myAddress;
    }

    function getBalanceOfAddress() public view returns (uint256) {
        return myAddress.balance;
    }

    // Strings
    string public myString = "PunkiesVerse";

    function setMyString(string memory _myString) public {
        myString = _myString;
    }
}
