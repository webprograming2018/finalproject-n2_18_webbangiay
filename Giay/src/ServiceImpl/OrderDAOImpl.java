package ServiceImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Model.DAO;
import Model.Order;
import Service.OrderDAO;

public class OrderDAOImpl implements OrderDAO {
	Connection conn = null;
	PreparedStatement stm = null;
	@Override
	public void addToOrder(Order order) {
		DAO dao = new DAO();
		conn = dao.Ketnoi();
		String query = "INSERT INTO orders(amount,money) VALUES (?,?)";
		try {
			PreparedStatement stm = conn.prepareStatement(query);
			stm.setInt(1, order.getAmount());
			stm.setInt(2, order.getMoney());
			stm.executeUpdate();

			System.out.println("added person information");
		} catch (SQLException e) {
		}
	}

}
