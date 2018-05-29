package MedicineAndHealth.entity;

public class DrugInformation {
	private Integer medicineId; 
	
	private String medicineName;
	
	private String mSize;
	
	private Integer stockAmount;

	private double price;
	
	private String mProducer;
	
	private String isRx;
	
	private String approvalNum;
	
	private String mIngredient;
	
	private String mIndication;
	
	private String mTrait;
	
	private String mDosage;
	
	private String mStorage;
	
	private String mCatalog;

	public Integer getMedicineId() {
		return medicineId;
	}

	public void setMedicineId(Integer medicineId) {
		this.medicineId = medicineId;
	}

	public String getMedicineName() {
		return medicineName;
	}

	public void setMedicineName(String medicineName) {
		this.medicineName = medicineName;
	}
	
	public Integer getStockAmount() {
		return stockAmount;
	}

	public void setStockAmount(Integer stockAmount) {
		this.stockAmount = stockAmount;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getmProducer() {
		return mProducer;
	}

	public void setmProducer(String mProducer) {
		this.mProducer = mProducer;
	}

	public String getIsRx() {
		return isRx;
	}

	public void setIsRx(String isRx) {
		this.isRx = isRx;
	}

	public String getApprovalNum() {
		return approvalNum;
	}

	public void setApprovalNum(String approvalNum) {
		this.approvalNum = approvalNum;
	}

	public String getmSize() {
		return mSize;
	}

	public void setmSize(String mSize) {
		this.mSize = mSize;
	}

	public String getmIngredient() {
		return mIngredient;
	}

	public void setmIngredient(String mIngredient) {
		this.mIngredient = mIngredient;
	}

	public String getmIndication() {
		return mIndication;
	}

	public void setmIndication(String mIndication) {
		this.mIndication = mIndication;
	}

	public String getmTrait() {
		return mTrait;
	}

	public void setmTrait(String mTrait) {
		this.mTrait = mTrait;
	}

	public String getmDosage() {
		return mDosage;
	}

	public void setmDosage(String mDosage) {
		this.mDosage = mDosage;
	}

	public String getmStorage() {
		return mStorage;
	}

	public void setmStorage(String mStorage) {
		this.mStorage = mStorage;
	}

	public String getmCatalog() {
		return mCatalog;
	}

	public void setmCatalog(String mCatalog) {
		this.mCatalog = mCatalog;
	}
}
