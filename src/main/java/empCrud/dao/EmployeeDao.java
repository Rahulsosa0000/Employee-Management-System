package empCrud.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import empCrud.model.Employee;

@Repository
@Transactional
public class EmployeeDao implements EmployeeDaoimpl{

	@Autowired
	private HibernateTemplate hibernateTemplate;

	
	//@Transactional
	public Employee saveEmp(Employee emp) {
	     hibernateTemplate.save(emp);
		return emp;
		
	}

	public Employee getEmpById(int id) {
		Employee employee=hibernateTemplate.get(Employee.class,id);
		return employee;
	}

	
	public List<Employee> getAllEmp() {
		List<Employee> list=hibernateTemplate.loadAll(Employee.class);
		return list;
	}

	//@Transactional
	public void updateEmp(Employee emp) {
		hibernateTemplate.update(emp);
		
	}

	//@Transactional
	public void deleteEmp(int id) {
		Employee employee=hibernateTemplate.get(Employee.class,id);
		hibernateTemplate.delete(employee);
	}

	

}
