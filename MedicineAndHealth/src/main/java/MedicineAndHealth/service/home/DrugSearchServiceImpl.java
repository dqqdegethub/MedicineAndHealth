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
	public List<DrugInformation> getDrugByDrugType(int drugType,int max) {
		return drugSearchDao.drugSearchByDrugType(drugType,max);
	}

	
}
