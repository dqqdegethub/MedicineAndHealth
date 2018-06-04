package MedicineAndHealth.service.staff;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import MedicineAndHealth.entity.Ordercheck;
import MedicineAndHealth.entity.Staff;
import MedicineAndHealth.intf.staff.StaffDao;

@Repository
public class StaffDaoImpl implements StaffDao {
	private static final String NAME_SPACE="MedicineAndHealth.staff.";
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public Integer queryStaffExist(Integer staffId){
		return sqlSessionTemplate.selectOne(NAME_SPACE+"queryStaffExist",staffId);
	}
	
	@Override
	public Staff login(Integer staffId,String password){
		Map<String, Object>paraMap=new HashMap<>();
		paraMap.put("staffId", staffId);
		paraMap.put("password", password);
		return sqlSessionTemplate.selectOne(NAME_SPACE+"login", paraMap);
	}
	
	@Override
	public Integer orderNum(Integer staffId){
		return sqlSessionTemplate.selectOne(NAME_SPACE+"orderNum",staffId);
	}
	
	@Override
	public Integer queryStaffPwd(Integer staffId,String password){
		Map<String, Object>paraMap=new HashMap<>();
		paraMap.put("staffId", staffId);
		paraMap.put("password", password);
		return sqlSessionTemplate.selectOne(NAME_SPACE+"queryStaffPwd",paraMap);
	}
	
	@Override
	public void updateStaffPassword(Integer staffId,String password){
		Map<String, Object>paraMap=new HashMap<>();
		paraMap.put("staffId",staffId);
		paraMap.put("password", password);
		sqlSessionTemplate.selectOne(NAME_SPACE+"updateStaffPassword",paraMap);
	}
	
	@Override
	public Staff searchStaffInfo(Integer staffId){
		return sqlSessionTemplate.selectOne(NAME_SPACE+"searchStaffInfo",staffId);
	}
	
	@Override
	public void updateStaffInfo(Integer staffId,String partment,String phoneNumber){
		Map<String, Object>paraMap=new HashMap<>();
		paraMap.put("staffId", staffId);
		paraMap.put("partment", partment);
		paraMap.put("phoneNumber", phoneNumber);
		sqlSessionTemplate.selectOne(NAME_SPACE+"updateStaffInfo",paraMap);
	}
	
	@Override
	public Integer getstaffId(){
		return sqlSessionTemplate.selectOne(NAME_SPACE+"getstaffId");
	}
	
	@Override
	public void staffInsert(Staff staff) {
		sqlSessionTemplate.insert(NAME_SPACE + "staffInsert", staff);
	}
	
	@Override
	public String queryStaffByNameAndId(Integer staffId,String staffName){
		Map<String, Object>paraMap=new HashMap<>();
		paraMap.put("staffId", staffId);
		paraMap.put("staffName", staffName);
		return sqlSessionTemplate.selectOne(NAME_SPACE+"queryStaffByNameAndId",paraMap);
	}
	
	@Override
	public Integer querySecretProblem(Integer staffId,String problem,String answer){
		Map<String, Object>paraMap=new HashMap<>();
		paraMap.put("staffId",staffId);
		paraMap.put("problem", problem);
		paraMap.put("answer", answer);
		return sqlSessionTemplate.selectOne(NAME_SPACE+"querySecretProblem",paraMap);
	}
	
	@Override
	public List<Ordercheck> queryOrder(Integer medicineId){
		return sqlSessionTemplate.selectList(NAME_SPACE+"queryOrder",medicineId);
	}
	
	@Override
	public void updateOrderBySer(Integer staffId,String code,Integer companyId,Integer medicineId,Integer customerId){
		Map<String, Object>paraMap=new HashMap<>();
		paraMap.put("staffId", staffId);
		paraMap.put("packageCode", code);
		paraMap.put("companyId", companyId);
		paraMap.put("medicineId", medicineId);
		paraMap.put("customerId", customerId);
		sqlSessionTemplate.selectOne(NAME_SPACE+"updateOrderBySer",paraMap);
	}
}
