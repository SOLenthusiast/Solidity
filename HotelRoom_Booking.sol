pragma solidity ^0.8.0;
// SPDX-License-Identifier: GPL-3.0

contract MyContract5 {
    //pay with ether
    //modifiers, visibility, events, enums, constrains

    enum Statuses { Vacant, Occupied }
    Statuses currentStatus;

    event Occupy(address _occupant, uint _value);
    address payable public owner;

    constructor() public {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }

    modifier OnlyWhileVacant {
        require(currentStatus == Statuses.Vacant, "Currently occupied");
        _;
    }

    modifier costs (uint _amount) {
        require(msg.value >= _amount, "Not enough yota");
        _;
    }


    receive() external payable OnlyWhileVacant costs(2 ether) {
        //Check price and status
        //require(msg.value >= 2 ether, "Not enough Ether");
        //require(currentStatus == Statuses.Vacant, "Currently occupied");

        //transfer payment to whomever dep  loyed the smart contract
        owner.transfer(msg.value); 
        currentStatus = Statuses.Occupied;
        emit Occupy(msg.sender, msg.value);
    }
    
}
