BOUNTY HUNTERS
BOUNTY HUNTERS is a simple Solidity smart contract system designed for managing bounties. It allows a contract owner to set and withdraw bounty amounts while enabling users to view the bounty. The contract is deployed on the Edu Chain.

Features:
Fixed Bounty Amount: The bounty is set to 1 ETH by default.
View Bounty: Anyone can check the current bounty amount.
Withdraw Bounty: Only the contract owner can withdraw the bounty.
Receive Function: The contract can receive Ether from any address.
Smart Contract Details:
Project Name: BOUNTY HUNTERS
Language: Solidity (Version ^0.8.0)
Network: Edu Chain
Deployed Address: 0xE39bfeb24371055c46ecf73383667547cbB9f722
Functions:
getBountyAmount()

Returns the current bounty amount.
Visibility: Public, View.
Usage: Check the available bounty.
withdrawBounty()

Allows the owner to withdraw the bounty amount.
Visibility: Public.
Restriction: Only accessible by the contract owner.
receive()

Accepts incoming Ether to the contract.
Visibility: External, Payable.
Deployed Address:
The BOUNTY HUNTERS contract is deployed on the Edu Chain at:

Copy
Edit
0xE39bfeb24371055c46ecf73383667547cbB9f722
How to Use:
View Bounty Amount:

Call the getBountyAmount() function to see the available bounty.
Withdraw Bounty:

Only the owner can call the withdrawBounty() function to withdraw the bounty amount.
Send Ether to Contract:

Send Ether directly to the contract address to increase the bounty amount.
How to Deploy:
Go to Remix IDE.
Copy the contract code into a new Solidity file (BountyHunters.sol).
Select Solidity Compiler and compile using version ^0.8.0.
Go to Deploy & Run Transactions and select Injected Web3 for Edu Chain deployment.
Click Deploy and confirm the transaction in your wallet.
Example Usage:
js
Copy
Edit
// View the current bounty amount
contractInstance.methods.getBountyAmount().call().then(console.log);

// Withdraw the bounty (only by the owner)
contractInstance.methods.withdrawBounty().send({ from: ownerAddress });
Security Considerations:
The withdrawBounty() function is restricted to the contract owner.
Ensure to use a secure wallet and network connection when interacting with the contract.
License:
This project is licensed under the MIT License.

Contributing:
Feel free to open issues or submit pull requests for enhancements and bug fixes.
