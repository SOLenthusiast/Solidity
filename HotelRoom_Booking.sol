pragma solidity ^0.8.0;
// SPDX-License-Identifier: GPL-3.0

// Book the hotel room/transfer payment to owner of smart contract
// -model the owner to receive payment in eth, state var get written to the chain 
// -assign the smart contract to the user who deploys to the chain; struct
// -function must be payable to book the room

// Keep track of the hotel room status, vacant or occupied with enum
// -enum restricts the variable to only one of the predefined values
// -set the default status to vacant 
// -check in the function above before making payment
// -Update the status to occupied in the booking function

// Add some constrains
//  -book twice, paid the right amount, room occupied?
//  -requirement to check the price and status, if not don't book & send an error msg
//  -use require using status and msg.value and wrap them in modifiers
//  -pass the mods in the book funcion

//  Event allow external consumers to subscribe to them and find out if smthg happened
//  -for instance for smart locks...
//  -emit the event, msg.sender, msg.value

//  Replace the book function with receive that will get triggered whenever eth is paid
//  -has to be external


// check if room status is vacant or occupied
// Check price and status

// 

contract MyContract {

    address payable public owner;
    enum Statuses { Vacant, Occupied}
    Statuses currentStatus;
    event Occupy(address _occupant, uint _value);

    constructor() public {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }

    modifier OnlyVacant {
        require(currentStatus == Statuses.Vacant, "Occupied hun!");
        _;
    }

    modifier costs {
        require(msg.value >= 2 ether, "Not enough ether");
        _;
    }

    
    receive() external payable costs OnlyVacant {

    //   require(currentStatus == Statuses.Vacant, "Currently occupied hun!")
    //   require(msg.value >= 2 ether, "Not enough Moula!")

        owner.transfer(msg.value);
        currentStatus = Statuses.Occupied;
        emit Occupy(msg.sender, msg.value);
    }
}
