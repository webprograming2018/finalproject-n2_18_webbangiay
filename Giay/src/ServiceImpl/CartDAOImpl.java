package ServiceImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Model.Cart;
import Model.DAO;
import Model.Product;
import Service.CartDAO;

public class CartDAOImpl implements CartDAO {
	Connection conn = null;
	PreparedStatement stm = null;
	@Override
	public void addProductToCart(Cart cart) {
		DAO dao = new DAO();
		conn = dao.Ketnoi();
		String query = "INSERT INTO cart(id,name,url, price, amount) VALUES (?,?,?,?,?)";
		try {
			PreparedStatement stm = conn.prepareStatement(query);
			stm.setInt(1, cart.getId());
			stm.setString(2, cart.getName());
			stm.setString(3, cart.getUrl());
			stm.setInt(4, cart.getPrice());
			stm.setInt(5, cart.getAmount());
			stm.executeUpdate();

			System.out.println("added person information");
		} catch (SQLException e) {
		}
		
	}

	@Override
	public ArrayList<Cart> getAllProduct() {
		Connection conn = null;
		ArrayList<Cart> list = new ArrayList<>();
		DAO dao = new DAO();
		conn = dao.Ketnoi();
		String sql = "SELECT * FROM cart";
		try {
			PreparedStatement stm = conn.prepareStatement(sql);
			ResultSet rs = stm.executeQuery();
			while(rs.next()) {
				Cart cart = new Cart();
				cart.setId(rs.getInt("id"));
				cart.setName(rs.getString("name"));
				cart.setUrl(rs.getString("url"));
				cart.setPrice(rs.getInt("price"));
				cart.setAmount(rs.getInt("amount"));
				list.add(cart);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

}
