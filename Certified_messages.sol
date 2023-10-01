// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;


contract Certified {
    event Message(address indexed from, address indexed to, string message);
    event Certify(address indexed from, address indexed to, string message);

    constructor() {
    }

    function sendMessage(address to, string calldata message) external {
        emit Message(msg.sender, to, message);
    }

    function certify(address to, string calldata message) external {
        emit Certify(msg.sender, to, message);
    }
}