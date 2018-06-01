package MedicineAndHealth.intf.home;

import java.util.List;

import MedicineAndHealth.entity.DrugInformation;

public interface DrugSearchDao {
	
public List<DrugInformation> searchDrug(String name);//通过关键词搜索

public List<DrugInformation> drugSearchByDrugType(int drugType,int max); //通过类别搜索


}
