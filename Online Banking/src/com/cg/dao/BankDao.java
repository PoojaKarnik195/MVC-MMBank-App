package com.cg.dao;

import com.cg.pojo.CustomerDetails;

/**
 * @author Pooja Karnik
 * 
 *         Bank DAO Interface created having withdraw and deposit as abstract
 *         methods
 *
 */

public interface BankDao {

	public abstract double withdraw(CustomerDetails customer);

	public abstract int deposit(CustomerDetails customer);

}
