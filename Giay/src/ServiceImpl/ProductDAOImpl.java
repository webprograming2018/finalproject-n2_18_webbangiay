package ServiceImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Model.DAO;
import Model.Product;
import Service.ProductDAO;

public class ProductDAOImpl implements ProductDAO {
	Connection conn = null;
	PreparedStatement ptm = null;
	@Override
	public Product getProductById(int id) {
		DAO dao = new DAO();
		conn = dao.Ketnoi();
		Product product = new Product();
		String sql = "SELECT * FROM product WHERE id = ?";
		try {
			ptm = conn.prepareStatement(sql);
			ptm.setInt(1, id);

			ResultSet rs = ptm.executeQuery();
			while(rs.next()) {
				if(id==rs.getInt("id")) {
					product.setId(rs.getInt("id"));
					product.setName(rs.getString("name"));
					product.setUrl(rs.getString("url"));
					product.setPrice(rs.getInt("price"));
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return product;
	}
	@Override
	public ArrayList<Product> search(String name) {
		// TODO Auto-generated method stub
		return null;
	}

}
