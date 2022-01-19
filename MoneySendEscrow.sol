// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract MoneySendEscrow {
    // Define variables.
    uint public balanceReceived;
    uint public lockedUntil;

    // Contract address receive money.
    function receiveMoney() public payable {
        balanceReceived += msg.value;
        lockedUntil = block.timestamp + 5 minutes;
    }

    // View received balance.
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    // Withdraw received balance.
    function withdrawMoney() public {
        if(lockedUntil < block.timestamp) {
            address payable to = payable(msg.sender);
            to.transfer(getBalance());
        }
    }

    // Withdraw funds to specific address.
    function withdrawMoneyTo(address payable _to) public {
        if(lockedUntil < block.timestamp) {
            _to.transfer(getBalance());
        }
    }
}