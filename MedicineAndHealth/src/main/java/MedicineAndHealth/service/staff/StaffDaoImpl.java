package MedicineAndHealth.service.staff;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import MedicineAndHealth.entity.Message;
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
	public List<Ordercheck> queryPurchase(){
		return sqlSessionTemplate.selectList(NAME_SPACE+"queryPurchase");
	}
	
	@Override
	public List<Ordercheck> queryPurchaseInfo(Integer medicineId,Integer staffId){
		Map<String, Object>paraMap=new HashMap<>();
		paraMap.put("staffId", staffId);
		paraMap.put("medicineId", medicineId);
		return sqlSessionTemplate.selectList(NAME_SPACE+"queryPurchaseInfo",paraMap);
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
	
	@Override
	public void updateMedicineBySer(Integer medicineId,Integer number){
		Map<String, Object>paraMap=new HashMap<>();
		paraMap.put("medicineId", medicineId);
		paraMap.put("num", number);
		sqlSessionTemplate.selectOne(NAME_SPACE+"updateMedicineBySer",paraMap);
	}
	
	@Override
	public Integer queryMedicineNum(Integer medicineId){
		return sqlSessionTemplate.selectOne(NAME_SPACE+"queryMedicineNum",medicineId);
	}
	
	@Override
	public void purchaseInsert(Integer medicineId) {

		sqlSessionTemplate.insert(NAME_SPACE + "purchaseInsert", medicineId);
	}
	
	@Override
	public void updatePurchase(Integer medicineId,Integer staffId,String date,Integer quantity) {
		Map<String, Object>paraMap=new HashMap<>();
		paraMap.put("medicineId", medicineId);
		paraMap.put("staffId", staffId);
		paraMap.put("date", date);
		paraMap.put("quantity", quantity);
		sqlSessionTemplate.selectOne(NAME_SPACE+"updatePurchase",paraMap);
	}
	
	@Override
	public void updateMedicine(Integer medicineId,Integer quantity) {
		Map<String, Object>paraMap=new HashMap<>();
		paraMap.put("medicineId", medicineId);
		paraMap.put("quantity", quantity);
		sqlSessionTemplate.selectOne(NAME_SPACE+"updateMedicine",paraMap);
	}
	
	@Override
	public List<Ordercheck> inventorySearch(String medicineName) {
		return sqlSessionTemplate.selectList(NAME_SPACE + "queryInventorySearch", medicineName);
	}
	
	@Override
	public List<Message> queryMessage(){
		return sqlSessionTemplate.selectList(NAME_SPACE+"queryMessage");
	}
	
	@Override
	public List<Message> queryMessDetail(Integer customerId){
		return sqlSessionTemplate.selectList(NAME_SPACE+"queryMessDetail",customerId);
	}
	
	@Override
	public void updateMessDetail(Integer staffId,Integer customerId,String answer) {
		Map<String, Object>paraMap=new HashMap<>();
		paraMap.put("staffId", staffId);
		paraMap.put("customerId", customerId);
		paraMap.put("answer", answer);
		sqlSessionTemplate.selectOne(NAME_SPACE+"updateMessDetail",paraMap);
	}
}
