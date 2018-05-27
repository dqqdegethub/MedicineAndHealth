package MedicineAndHealth.entity;

public class Cart {
	private int medicineId;
	
	private String medicineName;
	
	private int count; //药品购买数量 
	
	private boolean stockout; //库存状态

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

	public boolean isStockout() {
		return stockout;
	}
	public void setStockout(boolean stockout) {
		this.stockout = stockout;
	}

	
}
