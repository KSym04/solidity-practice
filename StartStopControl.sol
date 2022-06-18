// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract StartStopUpdateExample {
    // Variables declaration.
    address public owner;
    bool public paused;

    constructor() {
        owner = msg.sender;
    }

    // Send money payables.
    function sendMoney() public payable {}

    // Set paused state.
    function setPaused(bool _paused) public {
        require(msg.sender == owner, "You are not the owner.");
        paused = _paused;
    }

    // Withdraw to this.
    function withdrawAllMoney(address payable _to) public {
        require(owner == msg.sender, "You are not allowed to withdraw funds.");
        require(paused == false, "Contract Paused");
        _to.transfer(address(this).balance);
    }

    // Terminate contract.
    function destroySmartContract(address payable _to) public {
        require(msg.sender == owner, "You are not the owner.");
        selfdestruct(_to);
    }
}
