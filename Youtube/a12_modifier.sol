// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Modifier {
    
    address public owner;
    
    constructor() {
        owner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(owner == msg.sender, "Not Owner");
        _;
    }
    
    function onlyCallByOwner() public onlyOwner view returns (bool) {
        return true;
    }
}