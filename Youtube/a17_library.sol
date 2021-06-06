// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

library SafeMath {
    function add(uint8 x, uint8 y) internal pure returns (uint8) {
        uint8 result = x + y;
        require(result >= x, "Overflow!");
        
        return result;
    }
}

contract TestSafeMath {
    using SafeMath for uint8;
    
    function testAdd(uint8 x, uint8 y) public pure returns (uint8) {
        uint8 result = x.add(y);
        
        return result;
    }
}

library Array {
    function remove_item(uint[] storage arr, uint index) public {
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }
}

contract TestArray {
    using Array for uint[];
    
    uint[] public testArr = [1,2,3];
    
    function testArrayRemove() public {
        testArr.remove_item(1);
    }
    
    function getArr() public view returns (uint[] memory) {
        return testArr;
    }
}