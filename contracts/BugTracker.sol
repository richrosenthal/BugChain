pragma solidity ^0.5.0;

contract BugTracker {
	uint public taskCount = 0;

	struct Task {
		uint id;
		string title;
		string content;
		bool completed;
	}

	mapping(uint => Task) public tasks;

	constructor() public {
		createTask("First Bug", "All your base are belong to us");
	}

	function createTask(string memory _title, string memory _content) public {
		taskCount ++;
		tasks[taskCount] = Task(taskCount, _title, _content, false);
	}

}