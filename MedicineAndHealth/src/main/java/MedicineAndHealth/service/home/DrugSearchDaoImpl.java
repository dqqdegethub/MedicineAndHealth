package MedicineAndHealth.service.home;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import MedicineAndHealth.entity.DrugInformation;
import MedicineAndHealth.intf.home.DrugInfoDao;
import MedicineAndHealth.intf.home.DrugSearchDao;

@Repository
public class DrugSearchDaoImpl implements  DrugSearchDao {
	
private static final String NAME_SPACE = "MedicineAndHealth.drugSearch.";
	
	@Autowired
	SqlSessionTemplate SqlSessionTemplate;
	
	
	@Override
	public List<DrugInformation> searchDrug(String name){			
		return SqlSessionTemplate.selectList(NAME_SPACE + "drugSearch",name);
	}


	@Override
	public List<DrugInformation> drugSearchByDrugType(int drugType,int max) {
		Map<String,Object> map=new HashMap<>();		
		map.put("drugType", drugType);
		map.put("max", max);
		return SqlSessionTemplate.selectList(NAME_SPACE +"drugSearchByDrugType",map);
	}
	

}
