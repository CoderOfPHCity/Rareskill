// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract ListOfNumbers {
    uint256[] private arr;

    event NumberAppended(address indexed caller, uint256 number);


    /// let caller append @param number to the array "arr"
    function appendToArray(uint256 number) public {
        // your code here
        // address caller = msg.sender;
        arr.push(number);
        emit NumberAppended(msg.sender, number);
    }
    function deleteArray(uint index) public {
         delete arr[index];

    }
    function removePop(uint index) public {
        uint pop = arr[arr.length-1];
        arr.pop();
        arr[index] = pop;
//juywgdu

    }

    /// return arr
    function getArray() public view returns (uint256[] memory) {
        // your code here
        return arr;
        
    }
}