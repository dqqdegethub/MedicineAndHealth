package MedicineAndHealth.service.home;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import MedicineAndHealth.entity.DrugInformation;
import MedicineAndHealth.intf.home.DrugInfoDao;

@Repository
public class DrugInfoDaolmpl implements DrugInfoDao{ 
	private static final String NAME_SPACE = "MedicineAndHealth.home.";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public DrugInformation queryDrugInformation(int medicineId) {
		return  sqlSessionTemplate.selectOne(NAME_SPACE+"selectDruginfo", medicineId);
	}
	
	@Override
	public void insertCart(int customerId,int medicineId,int amount) {
		Map<String, Object> map=new HashMap<>();
		map.put("customerId",customerId);
		map.put("medicineId",medicineId);
		map.put("amount",amount);
		sqlSessionTemplate.insert(NAME_SPACE+"insertCart", map);
	}
}
