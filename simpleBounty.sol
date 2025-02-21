// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBounty {
    address public owner;
    uint256 public bountyAmount;

    // Contract constructor
    constructor() {
        owner = msg.sender;
        bountyAmount = 1 ether; // Default bounty amount set to 1 ETH
    }

    // View the bounty amount
    function getBountyAmount() public view returns (uint256) {
        return bountyAmount;
    }

    // Owner can withdraw the bounty
    function withdrawBounty() public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(address(this).balance >= bountyAmount, "Insufficient contract balance");
        payable(owner).transfer(bountyAmount);
    }

    // Function to receive Ether
    receive() external payable {}
}
