// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Struct {
    struct Todo {
        string task;
        bool completed;
    }
    
    Todo[] public todoList;
    
    function create(string memory _task) public {
        //Todo memory todo = Todo(_task, false);
        
        //Todo memory todo = Todo({task: _task, completed: false});
        
        Todo memory todo;
        todo.task = _task;
        todo.completed = false;
        
        todoList.push(todo);
    }
    
    function beginTest() public {
        create("do youtube video");
        create("play some games");
        create("do some thigns");
    }
    
    function get(uint _index) public view returns (Todo memory) {
        return todoList[_index];
    }
    
    function getList() public view returns (Todo[] memory) {
        return todoList;
    }
    
    function getDetails(uint _index) public view returns (string memory, bool) {
        Todo memory todo = todoList[_index];
        return (todo.task, todo.completed);
    }
    
    function setTask(uint _index, string memory _task) public {
        Todo storage todo = todoList[_index];
        todo.task = _task;
    }
    
    function taggleCompleted(uint _index) public {
        Todo storage todo = todoList[_index];
        todo.completed = !todo.completed;
    }
}