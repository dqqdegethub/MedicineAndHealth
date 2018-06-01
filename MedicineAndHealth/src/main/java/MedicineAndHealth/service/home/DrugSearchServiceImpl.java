package MedicineAndHealth.service.home;

import  java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MedicineAndHealth.entity.DrugInformation;
import MedicineAndHealth.intf.home.DrugSearchDao;
import MedicineAndHealth.intf.home.DrugSearchService;
@Service
public class DrugSearchServiceImpl implements DrugSearchService {
	@Autowired
	DrugSearchDao drugSearchDao;
	
	@Override
	public List<DrugInformation> getDrug(String name) {
		
		return drugSearchDao.searchDrug(name);
	}
	@Override
	public List<DrugInformation> getDrugByDrugType(String drugType) {
		return drugSearchDao.drugSearchByDrugType(drugType);
	}

	@Override
	public List<DrugInformation> getDrugByNameAndType(String name,String drugType){
		return drugSearchDao.drugSearchByNameAndType(name,drugType);
	}
}
