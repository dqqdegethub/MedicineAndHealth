package MedicineAndHealth.service.staff;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	public void updateStudentPassword(Integer staffId,String password){
		Map<String, Object>paraMap=new HashMap<>();
		paraMap.put("staffId",staffId);
		paraMap.put("password", password);
		sqlSessionTemplate.selectOne(NAME_SPACE+"updateStudentPassword",paraMap);
	}
	
	@Override
	public Staff searchStaffInfo(Integer staffId){
		return sqlSessionTemplate.selectOne(NAME_SPACE+"searchStaffInfo",staffId);
	}
	
	@Override
	public void updateStudentInfo(Integer staffId,String partment,String phoneNumber){
		Map<String, Object>paraMap=new HashMap<>();
		paraMap.put("staffId", staffId);
		paraMap.put("partment", partment);
		paraMap.put("phoneNumber", phoneNumber);
		sqlSessionTemplate.selectOne(NAME_SPACE+"updateStudentInfo",paraMap);
	}
}
