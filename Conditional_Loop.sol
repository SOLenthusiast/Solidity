pragma solidity ^0.8.0;
// SPDX-License-Identifier: GPL-3.0

    //Create an array  
    //a function that checks if a given number is even
    //a function that counts the even numbers in the array
    //check if address currently interacting with smart 
    //contract is the one that deployed

contract MyContract {
    
    uint[] public tab = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    address public Owner = msg.sender;

    function isEvenNumber(uint _number) public view returns(bool) {
        return(_number % 2 == 0);
    }

    function isEvenNumbertab(uint index) public view returns(bool) {
        return(tab[index] % 2 == 0);
    }

    function CountEvenOnes() public view returns(uint) {
        uint count = 0;
        for (uint i=0; i<tab.length; i++) {
            if(isEvenNumber(tab[i])) {
                count ++;
            }
        }
        return count;
    }

    function isCurrentAddress() public view returns(bool) {
        return(msg.sender == Owner);
    }
}
