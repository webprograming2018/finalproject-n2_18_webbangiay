package Model;

public class Order {
	private int id;
	private int amount;
	private int money;
	public int getId() {
		return id;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Order(int id, int amount, int money) {
		super();
		this.id = id;
		this.amount = amount;
		this.money = money;
	}
	public Order() {
		super();
	}
	
	
}
