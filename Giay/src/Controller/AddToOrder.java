package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Order;
import ServiceImpl.OrderDAOImpl;

/**
 * Servlet implementation class AddToOrder
 */
@WebServlet("/AddToOrder")
public class AddToOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int amount = Integer.parseInt(request.getParameter("amount"));
		int money = Integer.parseInt(request.getParameter("money"));
		
		Order order = new Order();
		order.setAmount(amount);
		order.setMoney(money);
		
		OrderDAOImpl orderDAOImpl = new OrderDAOImpl();
		orderDAOImpl.addToOrder(order);
		
		request.getRequestDispatcher("Success.jsp").forward(request, response);
	}

}
