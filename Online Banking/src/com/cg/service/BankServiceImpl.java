package com.cg.service;

import com.cg.dao.BankDao;
import com.cg.dao.BankDaoImpl;
import com.cg.pojo.CustomerDetails;

/**
 * @author Pooja Karnik
 * 
 *         Bank Service Implementation containing withdraw and deposit methods
 *
 */
public class BankServiceImpl implements BankService {

	BankDao dao = new BankDaoImpl();

	// to withdraw amount
	@Override
	public double withdraw(CustomerDetails customer) {
		return dao.withdraw(customer);
	}

	// to deposit amount
	@Override
	public int deposit(CustomerDetails customer) {
		return dao.deposit(customer);
	}
}
