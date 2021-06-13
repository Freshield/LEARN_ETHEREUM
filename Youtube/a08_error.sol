// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Error {
    int public balance;
    
    function deposit(int _amount) public {
        //require(_amount > 0, "Deposited amount must be greater than zero");
        //assert(_amount > 0);
        
        if (_amount <= 0) {
            revert("Impossible!");
        }
        balance += _amount;
        
    }
}