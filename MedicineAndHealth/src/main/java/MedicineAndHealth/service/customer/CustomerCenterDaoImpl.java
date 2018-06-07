package MedicineAndHealth.service.customer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import MedicineAndHealth.entity.Indent;
import MedicineAndHealth.intf.customer.CustomerCenterDao;

@Repository
public class CustomerCenterDaoImpl implements CustomerCenterDao {
	private static final String NAME_SPACE = "MedicineAndHealth.customercenter.";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Indent> indentConfirmQuery(int customerId){
		return sqlSessionTemplate.selectList(NAME_SPACE + "indentComfirmQuery", customerId);
	}
	
	@Override
	public void indentConfirm(int customerId,int medicineId){
		Map<String, Object> map = new HashMap<>();
		map.put("customerId", customerId);
		map.put("medicineId", medicineId);
		sqlSessionTemplate.update(NAME_SPACE + "indentComfirm", map);
	}
	
	@Override
	public List<Indent> allIndents(int customerId){
		return sqlSessionTemplate.selectList(NAME_SPACE + "allIndents", customerId);
	}
	
	@Override
	public String passwordQuery(int customerId){
		return sqlSessionTemplate.selectOne(NAME_SPACE + "passwordQuery", customerId);
	}
	
	@Override
	public void passwordChange(int customerId,String password){
		Map<String, Object> map = new HashMap<>();
		map.put("customerId", customerId);
		map.put("password", password);
		sqlSessionTemplate.update(NAME_SPACE + "passwordChange", map);
	}
}
