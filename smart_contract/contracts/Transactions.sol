// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Transactions {
	uint256 transactionCount;

	event Transfer(address from, address receiver, uint amount, string checkoutTab, uint256 timestamp, string shippingAddress);

	struct TransferStruct {
		address sender;
		address receiver;
		uint amount;
		string checkoutTab;
		uint256 timestamp;
		string shippingAddress;
	}

	TransferStruct[] transactions;

	function addToBlockchain(address payable receiver, uint amount, string memory checkoutTab, string memory shippingAddress) public {
		transactionCount += 1;
		transactions.push(TransferStruct(msg.sender, receiver, amount, checkoutTab, block.timestamp, shippingAddress));

		emit Transfer(msg.sender, receiver, amount, checkoutTab, block.timestamp, shippingAddress);
	}

	function getAllTransactions() public view returns (TransferStruct[] memory) {
		return transactions;
	}

	function getTransactionCount() public view returns (uint256) {
		return transactionCount;
	}

}