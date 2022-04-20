pragma solidity ^0.8.0;
// SPDX-License-Identifier: GPL-3.0

//Map user address to their in-game level
//Build a function to identify user current level

contract MyContract {

    mapping(address => uint) public userLevel;

    constructor() {
    userLevel[msg.sender] = 10;
   }

   function currentLevel(address _userAddress) public view returns(uint) {
        return userLevel[_userAddress];
   }
 }
