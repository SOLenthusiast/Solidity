pragma solidity ^0.8.0;
// SPDX-License-Identifier: GPL-3.0

contract MyContract5 {
    
    //Create an array  
    //a function that checks if numbers are even
    //a function that counts the even numbers in the array
    //check if address currently interacting with smart contract is the one that deployed

    uint[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    function countEvenNumbers() public view returns (uint) {
        uint count = 0;
        for(uint i=0; i < numbers.length; i++) {
            if(isEvenNumber(numbers[i])) {
                count ++;
            }
        }
        return count;
    }

    //Conditionals
    function isEvenNumber(uint _number) public view returns(bool){
        if (_number % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    function IsOwner() public view returns(bool) {
        return(msg.sender == owner);
    }
}
