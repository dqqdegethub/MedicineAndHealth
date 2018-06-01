package MedicineAndHealth.entity;

import java.util.List;



public class DrugSearchRequest {
	//private DrugInformation drugInformation;
	private String medicineName;
	private  String medicineType;
	private int code;
	private int drugId;
	private String drugPhoto; //药品图片
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public int getDrugId() {
		return drugId;
	}
	public void setDrugId(int drugId) {
		this.drugId = drugId;
	}
	public String getDrugPhoto() {
		return drugPhoto;
	}
	public void setDrugPhoto(String drugPhoto) {
		this.drugPhoto = drugPhoto;
	}
	public String getMedicineName() {
		return medicineName;
	}
	public void setMedicineName(String medicineName) {
		this.medicineName = medicineName;
	}
	public String getMedicineType() {
		return medicineType;
	}
	public void setMedicineType(String medicineType) {
		this.medicineType = medicineType;
	}
	

}
