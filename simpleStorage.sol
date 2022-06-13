// SPX-License-Identifier: MIT
pragma solidity ^0.8.8; 

contract SimpleStorage2 {

    uint favNumber;
//    People public person = People({favNumber: 2, name: "Ben"});
//    People public person2 = People({favNumber: 3, name: "ali"});

    struct People {
        uint256 favNumber;
        string name;
    }

    //dynamic array [3] = only max of 3 in the array
    People[] public people;

    function store(uint256 _favNumer) public {
        favNumber = _favNumer;
        retirve();
    }

    function retirve() public view returns(uint256) {
        return favNumber;
    }

    function addPerson(string memory _name, uint256 _favNumer) public {
        People memory NewPerson = People({favNumber: _favNumer, name: _name});
        people.push(NewPerson);
 //       people.push(People(_favNumer, _name));
    }
}
