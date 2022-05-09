// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage {
    //function that deploys simplestorage contract

    SimpleStorage[] public simpleStorageArray;
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }   

    function sfStore(uint256 _simpleStorageInd, uint256 simpleStorageNum) public {
    //address & ABI(app binary interface)
    //SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageInd]));
    //simpleStorage.store(simpleStorageNum);
        SimpleStorage(address(simpleStorageArray[_simpleStorageInd])).store(simpleStorageNum);

    }

    function sfGet(uint256 _simpleStorageInd) public view returns(uint256) {
    //SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageInd]));
    //return simpleStorage.viewNumber();
        return SimpleStorage(address(simpleStorageArray[_simpleStorageInd])).viewNumber();

    }
}
