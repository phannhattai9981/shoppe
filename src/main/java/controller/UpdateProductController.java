package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductList;
import entity.Product;

@WebServlet("/api/update")
public class UpdateProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateProductController() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("pid");
		response.setContentType("text/html;charset=UTF-8");

		ProductList list = new ProductList();
		Product product = list.getProductByID(id);
		request.setAttribute("detail", product);

		response.setContentType("text/html;charset=UTF-8");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/updateproduct.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
	

		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String image = request.getParameter("image");
		String spid = request.getParameter("id");

		Product product = new Product();
		product.setId(Integer.valueOf(spid));
		product.setName(name);
		product.setPrice(Double.valueOf(price));
		product.setImage(image);

		ProductList.updateProduct(product);
		response.sendRedirect("products");
	}

}