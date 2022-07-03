// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.1;

contract MappingStructSample {
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function sendMoney() public payable {}

    function withdrawAllMoney(address payable _to) public {
        _to.transfer(address(this).balance);
    }
}
