package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import config.Connect;
import entity.Product;
import entity.Users;
import dao.ProductList;

@WebServlet("/api/home")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public HomeController() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		ProductList products = new ProductList();
		HttpSession session = request.getSession();
		Users users = (Users) session.getAttribute("user-session");
		List<Product> product = products.getProduct();
		request.setAttribute("listP", product);

		int counts = ProductList.getAllCount();
		int endPage = counts / 6;
		if ((counts % 6) != 0) {
			endPage++;
		}
		System.out.println(endPage);
		System.out.println(users.getUsername());
		request.setAttribute("endP", endPage);
		request.setAttribute("user", users);

		response.setContentType("text/html;charset=UTF-8");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/home.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}