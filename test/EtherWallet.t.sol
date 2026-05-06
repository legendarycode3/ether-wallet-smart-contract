// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {EtherWallet} from "../src/EtherWallet.sol";

contract EtherWalletTest is Test {

        /** State Variables */
    EtherWallet etherwallet;
    address public DEPOSITOR = makeAddr("depositor");
    uint256 public constant STARTING_DEPOSITORS_AMOUNT = 1 ether;

   
        /** Functions */
    function setUp() public {
        etherwallet = new EtherWallet();

    }


    /// @notice Function testReceiveDepositsFunds ,Test that checks if ETH has been deposited to the owner's balance
    function testReceiveDepositsFunds() public {
            // ARRANGE
        vm.deal(DEPOSITOR, STARTING_DEPOSITORS_AMOUNT); 
        uint256  amount = 1 ether;

            //  ACT
        vm.prank(DEPOSITOR); // Used prank to make the DEPOSITOR send the ETH
        (bool success,) = address(etherwallet).call{value: amount}("");
        require(success, "Transfer failed");
         
            // ASSERT
        //The owner gets the balance.
         assertEq(etherwallet.s_balances(etherwallet.i_owner()), amount, "amount not deposited yet"); 
    }



    function testWithdrawRevertsIfNotOwner() public {
            // ARRANGE
        // uint256  amount = 1 ether;

            // ACT
        vm.prank(DEPOSITOR);

        vm.expectRevert(); 
         etherwallet.withdraw(1 ether);
    }

}