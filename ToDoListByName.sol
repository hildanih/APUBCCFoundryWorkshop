// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ToDoListByName {
    // Define a Task struct with a description
    struct Task {
        string description;
    }

    // Map a user's name to their list of tasks
    mapping(string => Task[]) public nameToTasks;

    // Add a task to the user's to-do list by name
    function addTask(string memory _name, string memory _description) public {
        nameToTasks[_name].push(Task(_description));
    }

    // View all tasks for a specific user by name
    function getTasks(string memory _name) public view returns (Task[] memory) {
        return nameToTasks[_name];
    }
}
