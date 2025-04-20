// I'm a comment!
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

// pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // uint256[] public anArray;
    Person[] public listOfPeople;

    // public, private (for functions and variables)
    // external, internal (used only for functions)

    mapping(string => uint256) public nameToFavoriteNumber;

    // store my favorite number function
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // to retrieve what is my favorite number
    //view, pure
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    //calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
