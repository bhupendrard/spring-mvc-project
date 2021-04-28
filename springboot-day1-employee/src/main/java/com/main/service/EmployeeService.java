package com.main.service;

import java.util.List;

import com.main.dto.EmployeeDTO;
import com.main.entity.EmployeeEntity;

public interface EmployeeService {

	public List<EmployeeDTO> findAllEmployees();
	


	public void registeration(EmployeeDTO eDTO);
	
	public EmployeeDTO authenticate(String email, String password) ;



	public void deleteDTO(EmployeeDTO eDTO);



	public EmployeeDTO fetchUpdateInfoService(EmployeeDTO eDTO);



	public void updateUserInfoService(EmployeeDTO eDTO);



	public List<EmployeeDTO> ascendingOrderService();



	



	public List<EmployeeDTO> descendingOrderService();




}
