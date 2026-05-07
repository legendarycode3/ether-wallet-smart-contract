#   💳 Ether Wallet Smart Contract

## Project Overview

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

## Technology Stack (Technologies Used)
* ****Solidity:**** - The programming language for writing the Smart contracts.
* ****RemixIDE:**** - used it to write, and deploy the smart contract directly in the browser first. A fastest way to get started, acting as a "no-setup" workshop for smart contract development.
* ****Foundry(forge, cast, anvil):****


## Getting Started
### Prerequisites

## 📋Contract Details
### Functions:
### Variables:

## Usage Guide (How to use - When using Remix IDE)

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
