pragma solidity ^0.8.0;
// SPDX-License-Identifier: GPL-3.0
contract MyContract {

    //state var
    uint public myUint = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;
    int public myInt = 1;
    
    //strings
    string public myString = "Hello world";
    bytes32 public myBytes32 = "Hello world!";
   
    address public myAdress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    struct MyStruct {
       uint myInt ;
       string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello world!");

    function getValue() public pure returns(uint) {
        
        uint value = 1;     //local var

        return value; 
    }
}
