package MedicineAndHealth.entity;

public class Customer {
	private Integer id;
	private String userName;
	private String password;
	private String realName;
	private String phoneNumber;
	private String address;
	private double coupon;
	private String message;	
	private String answer;
	
	
	public Integer getId() {
		return id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public double getCoupon() {
		return coupon;
	}

	public void setCoupon(double coupon) {
		this.coupon = coupon;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Customer() {
		
	}
	
	public Customer(int id,String name) {
		this.id=id;
		this.userName=name;
		this.password="***";
	}

	public Customer(int id,String name,String pwd) {
		this.id=id;
		this.userName=name;
		this.password=pwd;
	}
	
	
	public Customer(String username,String answer) {
		this.userName=username;
		this.answer=answer;
	}
	
	
	public Customer(String username,String pwd,String answer) {
		this.userName=username;
		this.answer=answer;
		this.password=pwd;
		
	}
	
	
	
	public Customer(String name,String pwd,String realname,String phonenumber,String address,String answer ) {		
		this.userName=name;
		this.password=pwd;
		this.realName=realname;
		this.phoneNumber=phonenumber;
		this.address=address;
		this.answer=answer;
	}
	
	
	
	
	public Customer(int id,String name,String pwd,String realname,String phonenumber,String address,String answer ) {
		this.id=id;
		this.userName=name;
		this.password=pwd;
		this.realName=realname;
		this.phoneNumber=phonenumber;
		this.address=address;
		this.answer=answer;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

}
