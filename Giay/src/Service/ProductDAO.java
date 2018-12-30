package Service;

import java.util.ArrayList;

import Model.Product;

public interface ProductDAO {
	public Product getProductById(int id);
	public ArrayList<Product> search(String name);
}
