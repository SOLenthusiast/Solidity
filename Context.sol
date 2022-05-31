// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// abstract is like interface but less restricted 
// therefore interface catches more errors
// also can't be deployed/imported has to inherit "is"
// Functions here have to be defined somewhere else and...
// ...the address of that somewhere else has to be defined
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}
