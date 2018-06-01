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
	public List<DrugInformation> drugSearchByDrugType(String drugType) {
		
		return SqlSessionTemplate.selectList(NAME_SPACE +"drugSearchByDrugType",drugType);
	}
	
	@Override
	public List<DrugInformation> drugSearchByNameAndType(String name,String drugType){
		Map<String,String> map=new HashMap<>();
		map.put("medicineName", name);
		map.put("drugType", drugType);
		
		return SqlSessionTemplate.selectList(NAME_SPACE+"drugSearchByNameAndType",map);
	}

}
