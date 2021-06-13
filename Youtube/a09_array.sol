// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Array {
    uint[] public array1;
    uint[3] public array2;
    uint[] public array3 = [1,2,3];
    
    function push(uint _number) public {
        array1.push(_number);
    }
    
    function pop() public {
        array1.pop();
    }
    
    function getLength() public view returns (uint) {
        return array1.length;
    }
    
    function deleteElement(uint _idx) public {
        delete array1[_idx];
    }
    
    function compactDelete(uint _idx) public {
        if (_idx == array1.length - 1) {
            array1.pop();
        } else {
            array1[_idx] = array1[array1.length - 1];
            array1.pop();
        }
    }
    
    function test() public {
        array1.push(100);
        array1.push(200);
        array1.push(300);
        array1.push(400);
        
        compactDelete(1);
        
        assert(array1.length == 3);
        assert(array1[0] == 100);
        assert(array1[1] == 400);
        assert(array1[2] == 300);
        
        compactDelete(2);
        assert(array1.length == 2);
        assert(array1[0] == 100);
        assert(array1[1] == 400);
    }
}