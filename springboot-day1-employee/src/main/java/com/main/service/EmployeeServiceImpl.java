package com.main.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.persistence.TypedQuery;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.main.dto.EmployeeDTO;
import com.main.entity.EmployeeEntity;
import com.main.repository.DaoRepository;


@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService{

	@Autowired
	DaoRepository daoRepository;


	
	
	
	@Override
	public List<EmployeeDTO> findAllEmployees() {
		List<EmployeeEntity> employeeEntityList =daoRepository.findAll();
		List<EmployeeDTO> employeeDTOlist=new ArrayList<>();
		for( EmployeeEntity e   :employeeEntityList){
			
			EmployeeDTO employeeDTO =new EmployeeDTO();
			BeanUtils.copyProperties(e, employeeDTO);
			
			employeeDTOlist.add(employeeDTO);
			
			
		}
		
		
		return employeeDTOlist;
	}


	@Override
	public void registeration(EmployeeDTO eDTO) {
		EmployeeEntity employeedEntity = new EmployeeEntity();
		BeanUtils.copyProperties(eDTO, employeedEntity);
		daoRepository.save(employeedEntity);
	}	
	
	public EmployeeDTO authenticate(String email, String password) {
		
		Optional<EmployeeEntity> optional=  daoRepository.findByEmailIdAndPassword(email,password);
		EmployeeDTO employeedto = null;
		if(optional.isPresent())
		{
			EmployeeEntity employeeEntity=optional.get();
			employeedto = new EmployeeDTO();
			BeanUtils.copyProperties(employeeEntity, employeedto);
		
			
		}
		return employeedto;	
	}

	@Override
	public void deleteDTO(EmployeeDTO eDTO) {
		EmployeeEntity employeedEntity = new EmployeeEntity();
		BeanUtils.copyProperties(eDTO, employeedEntity);
		System.out.println(employeedEntity.getEmployeeId());
		daoRepository.deleteById(employeedEntity.getEmployeeId());
		
	}

	@Override
	public EmployeeDTO fetchUpdateInfoService(EmployeeDTO eDTO) {
		EmployeeEntity employeedEntity = new EmployeeEntity();
		BeanUtils.copyProperties(eDTO, employeedEntity);
		Optional<EmployeeEntity> optional=daoRepository.findById(employeedEntity.getEmployeeId());
		
		EmployeeDTO employeedto = null;
		if(optional.isPresent())
		{
			EmployeeEntity employeeEntity=optional.get();
			employeedto = new EmployeeDTO();
			BeanUtils.copyProperties(employeeEntity, employeedto);
		
			
		}
		return employeedto;	
	}
	
	@Override
	public void updateUserInfoService(EmployeeDTO eDTO) {
		
		EmployeeEntity employeedEntity = new EmployeeEntity();
		BeanUtils.copyProperties(eDTO, employeedEntity);
		daoRepository.save(employeedEntity);
		

	}
	
	
	@Override
	public List<EmployeeDTO> ascendingOrderService() {
		List<EmployeeDTO> listOfUsersDTO = new ArrayList<>();
		List<EmployeeEntity> listOfUsersEntity = new ArrayList<>();
		listOfUsersEntity = daoRepository.findAllByOrderByEmailIdAsc();

		for (EmployeeEntity source : listOfUsersEntity) {
			EmployeeDTO target = new EmployeeDTO();
			BeanUtils.copyProperties(source, target);
			listOfUsersDTO.add(target);
		}

		System.out.println("service" + listOfUsersDTO);

		return listOfUsersDTO;
	}
	
	
	
	 @Override public List<EmployeeDTO> descendingOrderService() {
		  List<EmployeeDTO> listOfUsersDTO = new ArrayList<>(); List<EmployeeEntity>
		  listOfUsersEntity = new ArrayList<>(); 
		  listOfUsersEntity = daoRepository.findAllByOrderByEmailIdDesc();
		  
		  for (EmployeeEntity source: listOfUsersEntity ) { EmployeeDTO target= new
		  EmployeeDTO(); BeanUtils.copyProperties(source , target);
		  listOfUsersDTO.add(target); }
		  
		  System.out.println("service"+listOfUsersDTO);
		  
		  return listOfUsersDTO; }
	

}
