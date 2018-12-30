package Service;

import java.util.ArrayList;

import Model.Cart;
import Model.Product;

public interface CartDAO {
	public void addProductToCart(Cart cart);
	public ArrayList<Cart> getAllProduct();
}
