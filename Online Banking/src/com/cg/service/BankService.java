package com.cg.service;

import com.cg.pojo.CustomerDetails;

/**
 * @author Pooja Karnik
 * 
 *         Bank Service Interface created having withdraw and deposit as
 *         abstract methods
 *
 */
public interface BankService {

	public abstract double withdraw(CustomerDetails customer);

	public abstract int deposit(CustomerDetails customer);

}
