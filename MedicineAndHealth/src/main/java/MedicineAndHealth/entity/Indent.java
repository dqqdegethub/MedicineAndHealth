package MedicineAndHealth.entity;

public class Indent {
	private int medicineId;
	private String medicineName;
	private int count;
	private String company;
	private String packagecode;
	private String state;
	
	public int getMedicineId() {
		return medicineId;
	}
	public void setMedicineId(int medicineId) {
		this.medicineId = medicineId;
	}
	
	public String getMedicineName() {
		return medicineName;
	}
	public void setMedicineName(String medicineName) {
		this.medicineName = medicineName;
	}
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	
	public String getPackagecode() {
		return packagecode;
	}
	public void setPackagecode(String packagecode) {
		this.packagecode = packagecode;
	}
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}

}
