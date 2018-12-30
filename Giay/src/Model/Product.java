package Model;

public class Product {
	private int id;
	private String name;
	private String url;
	private int price;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Product(int id, String name, String url, int price) {
		super();
		this.id = id;
		this.name = name;
		this.url = url;
		this.price = price;
	}
	public Product() {
		super();
	}
	
}
