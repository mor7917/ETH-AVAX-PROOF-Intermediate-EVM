// SPDX-License-Identifier: MIT

/*
Only contract owner should be able to mint tokens
Any user can transfer tokens
Any user can burn tokens
*/

pragma solidity ^0.8.20; 

contract Transaction {
    string public name = "ANKIT";
    string public symbol = "MOR";
    uint256 public totalSupply;
    address public jonny;

    mapping(address => uint256) public balanceOf;
    

    constructor() {
        jonny = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == jonny, "Call the owner");
        _;
    }


    function mint(address to, uint256 value) public onlyOwner returns (bool) {
        totalSupply += value;
        balanceOf[to] += value;
        return true;
    }

    function transfer(address to, uint256 value) public returns (bool) {
        require(balanceOf[msg.sender] >= value, "Insufficient balance");
        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
        return true;
    }

     function burn(uint256 value) public returns (bool) {
        require(balanceOf[msg.sender] >= value, "Insufficient balance");
        balanceOf[msg.sender] -= value;
        totalSupply -= value;
        return true;
    }


}
