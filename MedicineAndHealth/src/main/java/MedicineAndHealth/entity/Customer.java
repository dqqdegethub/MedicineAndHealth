package MedicineAndHealth.entity;

public class Customer {
	private int customerId;
	private String customerName;
	private String password;
	
	public int getCustomerId() {
		return customerId;
	}	
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
