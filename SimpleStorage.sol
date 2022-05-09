// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract SimpleStorage {

    uint256 public favNumber; // this will get initialized to 0!

    struct People {
        uint256 favNumber;
        string name;
    }

    People[] public people;

    //People public person = People({favNumber: 2, name: "Patrick"});

    function store(uint256 _favNumber) public {
        favNumber = _favNumber;
    }
    
    function viewNumber() public view returns(uint256) {
        return favNumber;      
    }

    function addPerson(string memory _name, uint256 _favNumber) public {
        people.push(People(_favNumber, _name));
    }
}
