package MedicineAndHealth.intf.home;

import java.util.List;

import MedicineAndHealth.entity.DrugInformation;


public interface DrugSearchService {
	
	public List<DrugInformation> getDrug(String name);
	
	public List<DrugInformation> getDrugByDrugType(String drugType);
	
	public List<DrugInformation> getDrugByNameAndType(String name,String drugType);

}
