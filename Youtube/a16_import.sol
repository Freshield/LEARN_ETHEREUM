// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
import "./myLibs/Car.sol";

contract CarFactory {
    Car[] public cars;
    
    function createWithMoney(string memory _model) public payable {
        Car car = new Car{value: msg.value}(_model, address(this));
        cars.push(car);
    }
}

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
contract MyToken is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        
    }
    
    function decimals() public pure override returns (uint8) {
        return 9;
    }
}