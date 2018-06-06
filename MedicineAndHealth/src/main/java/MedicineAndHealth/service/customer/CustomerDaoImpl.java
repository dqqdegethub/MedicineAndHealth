package MedicineAndHealth.service.customer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.metadata.IIOInvalidTreeException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import MedicineAndHealth.entity.Customer;
import MedicineAndHealth.entity.Indent;
import MedicineAndHealth.intf.customer.CustomerDao;

@Repository
public class CustomerDaoImpl implements CustomerDao {
	
	private static final String NAME_SPACE = "MedicineAndHealth.login.";
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public Integer queryCustomer(String name,String pwd) {
		Map<String,String> map=new HashMap<String,String>();
		map.put("userName", name);
		map.put("password", pwd);
		return sqlSessionTemplate.selectOne(NAME_SPACE+"query",map);
	}
	@Override
	public Customer queryCustomerById(Integer id) {
		return sqlSessionTemplate.selectOne(NAME_SPACE+"queryById", id);
	}
	@Override
	public Customer findCustomer(String name,String pwd) {
		Map<String, String> map=new HashMap<String, String>();
		map.put("userName", name);
		map.put("password",pwd);
		return sqlSessionTemplate.selectOne(NAME_SPACE+"login", map);
	}
	@Override
	public int insertCustomer(Customer c) {
		Map<String, String> map=new HashMap<String, String>();
		map.put("userName",c.getUserName());
		map.put("password",c.getPassword());
		map.put("realName",c.getRealName());
		map.put("phoneNumber",c.getPhoneNumber());
		map.put("address", c.getAddress());
		map.put("answer", c.getAnswer());
		sqlSessionTemplate.insert(NAME_SPACE + "register", map);
		Integer id=sqlSessionTemplate.selectOne(NAME_SPACE+"query",map);
		return id;
	}
	@Override
	public Integer queryCustomerByAnswer(String username,String answer) {
		Map<String, String> map=new HashMap<String, String>();
		map.put("userName", username);
		map.put("answer",answer);
		return sqlSessionTemplate.selectOne(NAME_SPACE+"queryByAnswer", map);
	}
	@Override
	public void updatePwd(String username,String pwd,String answer) {
		Map<String, String> map=new HashMap<String, String>();
		map.put("userName",username);			
		map.put("answer",answer);
		Integer id=sqlSessionTemplate.selectOne(NAME_SPACE+"queryByAnswer",map);
		Map<String, Object> map2=new HashMap<String, Object>();
		map2.put("id",id);
		map2.put("password",pwd);	
		sqlSessionTemplate.update(NAME_SPACE+"updatePwd",map2);
	}

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
	
}
