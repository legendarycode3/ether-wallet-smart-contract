// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

/**
 * @title   Ether Wallet
 * @author  LegendaryCode
 * @notice  A contract that receives, holds, and allows the owner to withdraw ETH 
 */



contract EtherWallet {

    /** State Variables */
    address payable public immutable i_owner;


    /** Events */
    event Deposit(address indexed from, uint256 amount);
    /// @notice Logging withdrawals for transparancy, (e.g to show offchain or on frontend)
    event Withdraw(address indexed to, uint256 amount);


    /// @notice to track balances
    mapping(address => uint256) public s_balances;



    /** Errors */
    error EtherWallet__NotOwner();
    error EtherWallet__TransferFailed();



    /** Modifiers */
    /// @notice used modifier to implement pre-conditions, for onlyOwner access control
    modifier onlyOwner() {
        if(msg.sender != i_owner ){
            revert EtherWallet__NotOwner();
        }
        _;
    }


      
    /** Functions */


    /// @notice Initialize contract: Set the owner
    constructor () {
        //  casting i_owner to payable
        i_owner = payable(msg.sender);
    }


    /// @notice receive Function(built-in)  Track deposits in the balance mapping that has "Recieive Funds": Allows receiving Eth directly
     receive() external payable {
            // Tracks deposited funds (i_owner) in the balance mapping of the owner
            s_balances[i_owner] += msg.value;

            emit Deposit(msg.sender, msg.value);
     }


    /// @notice Withdraw Funds (): Only owner can withdraw
    function withdraw(uint256 _amount) public onlyOwner  {
        // Checks: Ensure contract has enough balance
        require(address(this).balance >= _amount, "Insufficient balance");

        //  to track balances of the sender and the amount to be withdrawn, and deduct before sending
        s_balances[msg.sender] -= _amount;
        
        // Interaction: Transfering the funds from the contract to the owner.
        (bool success, ) = i_owner.call{value: _amount}(""); 
        if (!success) {
            EtherWallet__TransferFailed;
        }

        emit Withdraw(i_owner, _amount);
    }


    /// @notice Function to check total balance
    function getBalance() public view returns(uint256){
        return s_balances[msg.sender];
    }
}
