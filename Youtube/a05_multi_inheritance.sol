// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract A {
    string public name;
    string public name1;
    
    constructor(string memory _name, string memory _name1) {
        name = _name;
        name1 = _name1;
    }
    
    function getContractName() public view virtual returns (string memory) {
        return name;
    }
}

contract B {
    string public helloworld;
    
    constructor(string memory _helloworld) {
        helloworld = _helloworld;
    }
    
    function getHelloWorld() public view virtual returns (string memory) {
        return helloworld;
    }
}

contract C is A, B {
    constructor(string memory _name, string memory _name1, string memory _helloworld) A(_name, _name1) B(_helloworld) {
        
    }
}