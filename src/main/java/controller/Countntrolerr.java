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

import config.Connect;
import dao.ProductList;
import entity.Product;


@WebServlet("/api/count")
public class Countntrolerr extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");

		String indexPage = request.getParameter("home");

		int index = Integer.parseInt(indexPage);

		int counts = ProductList.getAllCount();
		int endPage = counts / 6;

		if ((counts % 6) != 0) {
			endPage++;
		}

		List<Product> product = ProductList.listCount(index);
		System.out.println(endPage);

		request.setAttribute("listP", product);
		request.setAttribute("endP", endPage);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/home.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
