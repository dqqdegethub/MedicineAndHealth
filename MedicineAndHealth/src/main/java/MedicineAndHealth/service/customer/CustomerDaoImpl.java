package MedicineAndHealth.service.customer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import MedicineAndHealth.entity.Customer;
import MedicineAndHealth.entity.Message;
import MedicineAndHealth.entity.Ordercheck;
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
	public void insertMess(Integer customerId) {
		sqlSessionTemplate.insert(NAME_SPACE+"insertMess",customerId);
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
		Integer intResult=sqlSessionTemplate.selectOne(NAME_SPACE+"queryByUsername", map);
		 
		if(intResult>0) {
			map.put("answer",answer);
			Integer intResult2=sqlSessionTemplate.selectOne(NAME_SPACE+"queryByAnswer", map);
			if(intResult2 !=null) {
				return intResult2; //查到了结果
			}
			else if(intResult2==null) {
				return -2; //表明密保问题不正确
			}
			//return sqlSessionTemplate.selectOne(NAME_SPACE+"queryByAnswer", map);
		}
		else {
			return -1; //表明用户名不存在
		}
		return 0;
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
	public Message queryCustomerPro(Integer customerId){
		return sqlSessionTemplate.selectOne(NAME_SPACE+"queryCustomerPro",customerId);
	}
//	@Override
//	public void insertPro(Integer customerId,String problem,String time){
//		Map<String, Object>map=new HashMap<String, Object>();
//		map.put("customerId", customerId);
//		map.put("problem", problem);
//		map.put("time", time);
//		sqlSessionTemplate.insert(NAME_SPACE+"insertPro",map);
//	}
	@Override
	public void updatePro(Integer customerId,String problem,String time,String answer){
		Map<String, Object>map=new HashMap<String, Object>();
		map.put("customerId", customerId);
		map.put("problem", problem);
		map.put("time", time);
		if(answer==null) {
			answer="无";
		}
		map.put("answer", answer);
		sqlSessionTemplate.update(NAME_SPACE+"updatePro",map);
	}
	
	@Override
	public Integer queryCusId(String customerName) {
		return sqlSessionTemplate.selectOne(NAME_SPACE+"queryCusId",customerName);
	}
}
