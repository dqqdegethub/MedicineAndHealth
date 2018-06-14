package MedicineAndHealth.intf.home;

import MedicineAndHealth.entity.DrugInformation;

public interface DrugInfoService { 
	DrugInformation queryDrugInformation(int medicineId);

	void insertCart(int customerId, int medicineId, int amount);

	Integer queryDrugNumber(int customerId, int medicineId);

	void updateCart(int customerId, int medicineId, int count);
}
