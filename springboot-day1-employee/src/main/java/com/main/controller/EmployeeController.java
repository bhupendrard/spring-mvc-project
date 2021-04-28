package com.main.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.main.dto.EmployeeDTO;
import com.main.service.EmployeeService;

@Controller
public class EmployeeController {
	
	
	@Autowired
	EmployeeService employeeService;
	
	@GetMapping("/findAll")
	 public String showAllEmployees(Model model){
		
		List<EmployeeDTO>  empList=employeeService.findAllEmployees();
		System.out.println(empList);
		
		
		
		
		model.addAttribute("listOfUsers",empList);
		
		
		return "showAllEmployee";
		
	}
	
	
	@GetMapping("/Register")
	public String RegisterEmployeePage() {
		
		return "register";
	}
	
	
	@PostMapping("/registerEmployee")
	public String RegisterEmployeeMethod(@ModelAttribute EmployeeDTO eDTO, Model model) {
		employeeService.registeration(eDTO);
		model.addAttribute("regMsg1", "You can log into your account to get access");
		return "login";
		

	}
	
	
	@GetMapping({ "/login", "/" })
	public String loginPage() {

		return "login";

	}
	
	@PostMapping("/auth")
	public String loginMethod(@RequestParam String email, @RequestParam String password, Model model) {

		System.out.println(email + " " + password);

		EmployeeDTO employeeDTO = employeeService.authenticate(email, password);
		System.out.println(employeeDTO);
		if (employeeDTO != null) {
			model.addAttribute("fact", employeeDTO);
			return "congrates";
		} else {
			model.addAttribute("fact", "Login credential. please check your email or password");
			return "login";

		}

	}
	
	
	
	@GetMapping("/deleteServlet")
	public String deleteMethod(@ModelAttribute EmployeeDTO eDTO, Model model) {
		employeeService.deleteDTO(eDTO);
		return "redirect:/findAll";
		
	}


	
	@GetMapping("/fetchupdateServlet")
	public String fetchupdatePage(@ModelAttribute EmployeeDTO eDTO, Model model) {
		EmployeeDTO employeeDTO = employeeService.fetchUpdateInfoService(eDTO);

		model.addAttribute("fact", employeeDTO);
		return "update";

	}
	
	@PostMapping("/updateInfo")
	public String updateInfoMethod(@ModelAttribute EmployeeDTO eDTO, Model model) {

		employeeService.updateUserInfoService(eDTO);
		
		return "redirect:/findAll";
		
	}
	 

	  @GetMapping({ "/ascendingServlet" }) public String
	  ascendingMethod(@ModelAttribute EmployeeDTO eDTO, Model model) {
	  List<EmployeeDTO> employeeDTO = employeeService.ascendingOrderService();
	  
	  model.addAttribute("listOfUsers", employeeDTO); 
	  return "showAllEmployee";
	  
	  }
	
		@GetMapping({ "/descendingServlet" })
		public String descendingMethod(@ModelAttribute EmployeeDTO eDTO, Model model) {
			List<EmployeeDTO> employeeEntity = employeeService.descendingOrderService();

			model.addAttribute("listOfUsers", employeeEntity);
			return "showAllEmployee";

		}
	
	
	 @RequestMapping("/logoutServlet")
     public String logout(HttpSession session ) {
        session.invalidate();
        return "redirect:/login";
     }

}
