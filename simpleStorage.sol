//SPX-License-Identifier: MIT
pragma solidity ^0.8.8;

//Deployed on EVM,and metamask
contract simplestStorage {

    //uint256 public myFavNumber;
    mapping(string => uint256) public nameForNumber;

    struct People {
        uint256 myfavNumber;
        string name;
    }

    //People public somebodyelse = People({myfavNumber: 1, name: "Ben"});
    People[] public somebody;

    function addSomebody(uint256 _favNumer, string memory _name) public {
        //People memory NewPerson = People(_favNumer, _name);
        //somebody.push(NewPerson);
        somebody.push(People(_favNumer, _name));
        nameForNumber[_name] = _favNumer;
    }
}
