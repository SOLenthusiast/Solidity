/ SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {

    //event arg get logged in the tx, indexed allows for filtered research 
    //a given address preceded(?) with _from 
    // event emitted when token transferred from one acc to another
    event Transfer(address indexed from, address indexed to, uint256 value);

    //emitted when approval required to spend funds
    event Approval(address indexed owner, address indexed spender, uint256 value);

    //returns tot numb of tokens?
    function totalSupply() external view returns (uint256);

}
