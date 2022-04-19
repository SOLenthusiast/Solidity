pragma solidity ^0.8.0;
// SPDX-License-Identifier: GPL-3.0

// Build 
// 1D, 2D arrays
// An array list of fruits
// An empty array of string
// A function that fills in the empty array
// A function returns its length

contract MyContracts {
    //Array
    uint[] public uintArray = [1,2,3];

    string[] public stringArray = ["apple", "banana"];
    string[] public values;
    uint[][] public array2D = [[1,2,3], [4,5,6]];
    function addValue(string memory _value) public {
        values.push(_value);
    }

    function valueCount() public view returns(uint){
            return values.length;  
    }
}
