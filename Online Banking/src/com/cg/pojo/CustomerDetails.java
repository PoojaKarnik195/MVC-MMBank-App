package com.cg.pojo;

/**
 * @author Pooja Karnik
 * 
 *         CustomerDetails class having various attributes for banking
 *
 */
public class CustomerDetails {

	private int accountNumber;
	private double balanceBefore = 10_000;
	private double amount;
	private int deposit;
	private String sender;
	private String receiver;
	private String amountTransfer;

	// This is a Ctor..
	public CustomerDetails(String sender, String receiver, String amountTransfer) {
		this.sender = sender;
		this.receiver = receiver;
		this.amountTransfer = amountTransfer;
	}

	public CustomerDetails(int accountNumber, double amount) {
		this.accountNumber = accountNumber;
		this.amount = amount;
	}

	public CustomerDetails(int accountNumber, int deposit) {
		this.accountNumber = accountNumber;
		this.deposit = deposit;
	}

	// getters and setters
	public String getAmountTransfer() {
		return amountTransfer;
	}

	public void setAmountTransfer(String amountTransfer) {
		this.amountTransfer = amountTransfer;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public int getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(int accountNumber) {
		this.accountNumber = accountNumber;
	}

	public double getBalanceBefore() {
		return balanceBefore;
	}

	public double getDeposit() {
		return deposit;
	}

	public void setDeposit(int deposit) {
		this.deposit = deposit;
	}
}
