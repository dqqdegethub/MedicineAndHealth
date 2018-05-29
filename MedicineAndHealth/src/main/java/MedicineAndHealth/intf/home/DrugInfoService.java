package MedicineAndHealth.intf.home;

import MedicineAndHealth.entity.DrugInformation;

public interface DrugInfoService { 
	DrugInformation queryDrugInformation(int medicineId);

	void insertCart(int customerId, int medicineId, int amount);
}
