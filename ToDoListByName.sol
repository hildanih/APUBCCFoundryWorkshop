// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ToDoListByName {
    struct Task {
        string description;
    }

    // Store to-do lists based on a name string
    mapping(string => Task[]) public nameToTasks;

    // Add a task to the user's to-do list by name
    function addTask(string memory _name, string memory _description) public {
        nameToTasks[_name].push(Task(_description));
    }

    // View all tasks for a specific name
    function getTasks(string memory _name) public view returns (Task[] memory) {
        return nameToTasks[_name];
    }

    // Optional: update a task by index
    function updateTask(
        string memory _name,
        uint256 _index,
        string memory _newDescription
    ) public {
        require(_index < nameToTasks[_name].length, "Invalid index");
        nameToTasks[_name][_index].description = _newDescription;
    }

    // Optional: delete a task
    function deleteTask(string memory _name, uint256 _index) public {
        require(_index < nameToTasks[_name].length, "Invalid index");
        uint256 lastIndex = nameToTasks[_name].length - 1;
        nameToTasks[_name][_index] = nameToTasks[_name][lastIndex];
        nameToTasks[_name].pop();
    }
}
