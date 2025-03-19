package empCrud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import empCrud.dao.EmployeeDao;
import empCrud.model.Employee;
import jakarta.servlet.http.HttpSession;

@Controller
public class EmployeeController {
	              
	@Autowired
	private EmployeeDao empDao;
	
	@RequestMapping(path = "/home")
	public String home(Model model) {
		
		List<Employee> allEmp = empDao.getAllEmp();
		model.addAttribute("employees",allEmp);
		
		return "home";
		
	}
	
	@RequestMapping(path = "/addEmp")
	public String addEmp() {
		return "addEmp";
		
	}
	@RequestMapping(path = "/createEmp",method = RequestMethod.POST)
	public String createEmp(@ModelAttribute Employee employee, HttpSession session) {
		System.out.println(employee);
		empDao.saveEmp(employee); 
		session.setAttribute("msg", "Register Successfully");
		
		return "redirect:/addEmp";
		    
	}
	
	


	@RequestMapping(path = "/editEmp/{id}")
	public String editEmp(@PathVariable("id") int id,Model model) {
		
		Employee emp = empDao.getEmpById(id);
		model.addAttribute("employees",emp);
		
		return "editEmp";
		
	} 
	   
	// search
	@RequestMapping(path = "/search")
		    public String searchEmployee(@RequestParam(value = "id", required = false) Integer id, Model model) {
		        if (id != null) {
		            // Fetch employee details if 'id' is provided
		            Employee emp = empDao.getEmpById(id);
		            model.addAttribute("employee", emp);
		        } else {
		            // If 'id' is not provided, ensure the model attribute is empty
		            model.addAttribute("employee", null);
		        }
	        return "searchEmp"; // Redirect to search.jsp
	    }
	
	
	@RequestMapping(path = "/updateEmp",method = RequestMethod.POST)
	public String updateEmp(@ModelAttribute Employee emp, Model model,HttpSession session) {
		empDao.updateEmp(emp);
		
		session.setAttribute("msg", "Data update Successfully");
		return "redirect:/home";
		
	}
	
	@RequestMapping(path ="deleteEmp/{id}" )
	public String deleteEmp(@PathVariable("id") int id,HttpSession session) {
		empDao.deleteEmp(id);
		session.setAttribute("msg", "Data Delete Successfully");

		return "redirect:/home";
		
	}

}
