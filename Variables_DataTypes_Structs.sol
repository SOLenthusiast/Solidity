pragma solidity ^0.8.0;
// SPDX-License-Identifier: GPL-3.0
contract MyContract {

   
    uint public MyUint = 1;
    string public MyString = "Hello World!";
    bytes32 public MyByte32 = "Hello world";
    address public MyAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    int public myInt = 1;

    struct John {
        uint MyAge;
        string Lastname;
        string Favfood;
    }

    John public Johnie = John(21, "Doe", "Perogie");

    function getValue() public pure returns(uint) {      
        uint value = 1;     //local var
        return value; 
    }
}
