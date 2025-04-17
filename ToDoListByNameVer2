//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract ToDoListByName{

    string[] listOfTask;

    mapping (string => string) public nameToTasks;

    function addTask (string memory _name, string memory _task) public {
        nameToTasks[_name]=_task;
    }

    function getTasks(string memory _name) public view returns (string memory){
        return nameToTasks[_name];
    }
}
