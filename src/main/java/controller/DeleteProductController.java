package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductList;

@WebServlet("/api/detele")
public class DeleteProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteProductController() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("pid");

		ProductList.deleteProductByID(id);
		response.sendRedirect("/javaWe/api/products");
	}

}
