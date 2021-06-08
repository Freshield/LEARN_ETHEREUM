// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Car {
    string public model;
    address public owner;
    uint public cost;
    
    constructor(string memory _model, address _owner) payable {
        model = _model;
        owner = _owner;
        cost = msg.value;
    }
    
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

contract CarFactory {
    Car[] public cars;
    
    function createWithMoney(string memory _model) public payable {
        Car car = new Car{value: msg.value}(_model, address(this));
        cars.push(car);
    }
}