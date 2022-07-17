// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Import this file to use console.log
import "hardhat/console.sol";

contract Welcome {
    string private welcomeMessage;

    constructor(string memory _welcomeMessage) {
        console.log("Deploying contract with message:", _welcomeMessage);
        welcomeMessage = _welcomeMessage;
    }

    function welcome() public view returns (string memory) {
        return welcomeMessage;
    }

    function setWelcome(string memory _welcomeMessage) public {
        console.log("Changing welcome message from '%s' to '%s'", welcomeMessage, _welcomeMessage);
        welcomeMessage = _welcomeMessage;
    }
}
