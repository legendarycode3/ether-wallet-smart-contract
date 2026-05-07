#   💳 Ether Wallet Smart Contract

## Project Overview
A Ether Wallet smart contract that allows :
* An authorized address to receive, hold.
* The owner of an wallet address can be able to withdraw ETH.
* User can gets their balance of amount left.

## 📌 Features
* ****Owner Authorization (onlyOwner modifier):**** A mechanism to restrict sensitive actions (like withdrawals) to the authorized user or set of users.
* ****Receive Function (receive()):****  A special, external function that enables the contract to accept incoming Ether directly without calling other functions.
* ****Withdrawal mechanism (withdraw()):**** A function that allows the owner to pull funds from the contract to a specified address, commonly using a "pull over push" approach to improve security.
* ****Balance Checker (getBalance()):**** A public or external function that allows users to view the current amount of ETH held by the contract.
* ****Deposit Event Logging:**** Emitting an event  to make smart contract transactions easily trackable offchain through the blockchain.

## 🧠 Key Concepts Applied
* ****Mapping:**** For tracking a balance of a particular wallet using the address.
* ****Modifiers:**** Utilized modifier to implement pre-conditions, for onlyOwner access control.
* ****Constructor:**** Sets the address that deploys the contract as the owner.
* ****i_owner:**** Defined an owner address and made it payable, to be able to receivce funds.
* ****Events:**** Implementation of the events , to track the "Deposited" and the "Withdrawes" funds offchain.
* ****Custom Error:****  Defined and used custom errors, for gas optimation.

## 📂 Project Structure (Files) 
* ****`EtherWallet.sol`****: Core contract implementing receivce(built-in), withdraw(), and getBalance() functions.
* ****`EtherWallet.t.sol`****: Unit Test (suite) containing tests to validate contract functionalities.

## Technology Stack (Technologies Used)
* ****[Solidity](https://www.soliditylang.org/)**** - The programming language for writing the Smart contracts.
* ****[RemixIDE](https://remix.ethereum.org/)**** - used it to write, and deploy the smart contract directly in the browser first. A fastest way to get started, acting as a "no-setup" workshop for smart contract development.
* ****[Foundry](https://www.getfoundry.sh/)**** - Development framework and testing suite.
* ****[Visual Studio Code](https://code.visualstudio.com/)****  Install this IDE only if you are using foundry development kit rather than "Remix IDE" which is for quick prototying.


## Getting Started
### Prerequisites
* Solidity Compiler, Version ^0.8.18 or higher.
* `Remix IDE` or `Foundry Development Kit`.

### Recommendation (For Beginners)
****NOTE (Use Remix IDE, for quick prototyping):**** You can literally just copy the main contract source code and paste it on Remix IDE and learn along side how the code works while trying to build yours as you keep building.

## 📋Contract Details
### Functions:
* ****`constructor()`****: Called only once upon contract deployment. Sets the msg.sender (the address deploying the contract) as a payable address initial `owner`.
* ****`onlyOwner()`****: Modifier implementation for a  pre-conditions, for onlyOwner access control.
* ****`receive()`****:  Enables the address to Receives Ether directly, updates the owner's balance, and emits a deposit event.
* ****`withdraw`****:  Withdraws a specified amount of Ether from the contract to the owner.
* ****`getBalance`****:  Gets the current balance of the caller (address).

### Variables:
* ****`s_balances`****: Variable that tracks the balance of a address using maps(address).
* ****`i_owner`****: Immutable variable storing the owner’s address.
* ****`_amount`****: To specify the amount to be transfered.

## Usage Guide (How to use - When using Remix IDE)
1. ****Compile:**** Compile the contract.
2. ****Deployment:**** After compiling , deploy the contract , then interact with the deployed contract , using the buttons that poops up.
3. ****receivce:**** With the help of the receivce(built-in) function, Send in some ether into your wallet address as an authorized-owner, using the `low level interaction` to fund or deposit to the address.
4. ****withdraw:**** You can withdraw some funds from the funded address , by specifying the amount you want to

## Example Usage 
* Deposit 1 ETH.
* getBalance() → 1 ETH.

## Why This Matters (Ether Wallet Smart Contract)
Ether Wallet smart contracts are crucial in web3 blockchain systems because they:
1. Eliminate Single Point of Failure: Unlike traditional wallets where losing a seed phrase means losing all funds, smart contract wallets can implement social recovery and multisig to prevent permanent loss.
2. Essentially, it moves control from "you own the key" to "the code manages the assets safely."

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of (Some include):

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).

## Documentation

https://book.getfoundry.sh/

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

## Author
Built with ❤️ by [@legendarycode3](https://github.com/legendarycode3/)  </br>
Part of my  `60 Days of Solidity Challenge`

##  If you find this project helpful,then link back to this repository. 
`I Appreciate`
