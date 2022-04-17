//Build a fonction that increment a number from 0 to 2^256 - 1

pragma solidity ^0.8.0;
//SPDX-License-Identifier: GPL-3.0;

contract Counter {

    uint public count = 0;

    function incrementCount() public {
        count ++;
    }
}
