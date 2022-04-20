pragma solidity ^0.8.0;
// SPDX-License-Identifier: GPL-3.0

// Map names as state variables
// Initialise names
// Map books
// Create a structure/list of author & titles
// Function that adds authors & titles;
// Function that adds authors & titles for this address

contract MyContract {

mapping(uint => string) public names;
mapping(uint => Book) public books;
mapping(address => mapping(uint => Book)) public myBooks;
constructor() {

    names[1] = "Kava";
    names[2] = "Luna";
    names[3] = "Matic";
}

struct Book {
    string title;
    string author;
}

function Addbooks(uint _id, string memory _title, string memory _author) public {
    books[_id] = Book(_title, _author);
}

function AddmyBooks(uint _id, string memory _title, string memory _author) public {
    myBooks[msg.sender][_id] = Book(_title, _author);
}

}
