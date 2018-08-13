package com.cg.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cg.pojo.CustomerDetails;
import com.cg.service.BankService;
import com.cg.service.BankServiceImpl;

/**
 * @author Pooja Karnik
 * 
 *         This Program is used to create a Banking application using MVC
 *         framework with JSP and Servlets
 *
 */
@WebServlet("*.app")
public class BankServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BankService service = new BankServiceImpl();

	public BankServlet() {

	}

	// controller will redirect the requests to different methods as per the
	// requirement
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();
		HttpSession session = request.getSession();

		switch (action) {
		case "/withdraw.app":
			response.sendRedirect("withdrawForm.jsp");
			break;
		case "/calculateWithdraw.app":

			int accNo = Integer.parseInt(request.getParameter("accountNumber"));
			double amount = Double.parseDouble(request.getParameter("amount"));

			CustomerDetails customer = new CustomerDetails(accNo, amount);

			double result = service.withdraw(customer);
			session.setAttribute("Balance", result);

			RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
			dispatcher.forward(request, response);
			break;
		case "/deposit.app":
			response.sendRedirect("depositForm.jsp");
			break;
		case "/calculateDeposit.app":

			int accNo2 = Integer.parseInt(request.getParameter("accountNumber"));
			int depAmount = Integer.parseInt(request.getParameter("deposit"));

			CustomerDetails customer1 = new CustomerDetails(accNo2, depAmount);

			int result2 = service.deposit(customer1);
			session.setAttribute("Balance2", result2);

			RequestDispatcher dispatcher2 = request.getRequestDispatcher("result2.jsp");
			dispatcher2.forward(request, response);
			break;
		case "/fundTransfer.app":
			response.sendRedirect("fundTransfer.jsp");
			break;
		case "/obtainFundTransfer.app":

			CustomerDetails customers = new CustomerDetails(request.getParameter("sender"),
					request.getParameter("receiver"), request.getParameter("amountTransfer"));

			request.setAttribute("CustomerDetails", customers);
			RequestDispatcher dispatcher3 = request.getRequestDispatcher("result3.jsp");
			dispatcher3.forward(request, response);
		}
	}

	// doPost calls the doGet method
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
