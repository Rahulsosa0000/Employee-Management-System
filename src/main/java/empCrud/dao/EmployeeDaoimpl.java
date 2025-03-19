package empCrud.dao;

import java.util.List;

import empCrud.model.Employee;

public interface EmployeeDaoimpl {
	
	public Employee saveEmp(Employee emp);
	
	public Employee getEmpById(int id);
	
	public List<Employee> getAllEmp();
	
	public void updateEmp(Employee emp);
	
	public void deleteEmp(int id);

	
}
