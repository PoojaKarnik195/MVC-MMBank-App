package com.cg.dao;

import com.cg.pojo.CustomerDetails;

/**
 * @author Pooja Karnik
 * 
 *         Bank DAO Implementation containing withdraw and deposit methods
 *
 */

public class BankDaoImpl implements BankDao {

	CustomerDetails customer;

	public double withdraw(CustomerDetails customer) {
		double value = customer.getBalanceBefore();
		if (value > customer.getAmount()) {
			return (value - customer.getAmount());
		}
		return 0;
	}

	public int deposit(CustomerDetails customer) {
		int value = (int) customer.getBalanceBefore();
		value = (int) (value + customer.getDeposit());
		return value;
	}
}
