pragma solidity ^0.6.0;
// SPDX-License-Identifier: GPL-3.0

contract Counter {
    uint public count = 6;

    function incrementCount() public {
        count ++;
    } 
}
