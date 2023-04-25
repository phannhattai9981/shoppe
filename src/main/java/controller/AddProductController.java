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
import entity.Product;
import dao.ProductList;
@WebServlet("/api/new")
public class AddProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddProductController() {
    
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/addproduct.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String image = request.getParameter("image");
	
		Product product = new Product();
		product.setName(name);
		product.setPrice(Double.valueOf(price));
		product.setImage(image);
		
		ProductList.insertProduct(product);
		response.sendRedirect("products");
	}
}
