package com.main.repository;





import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.main.entity.EmployeeEntity;

public interface DaoRepository extends JpaRepository<EmployeeEntity, Integer>  {

	//@Query("SELECT  * FROM EmployeeEntity p WHERE p.emailId=? and p.emailId=?")
	//@Query("select u from EmployeeEntity u where u.emailId = ?1")
	Optional<EmployeeEntity>  findByEmailIdAndPassword(String email,String pass);

	
	Optional<EmployeeEntity>  findById(int employeeId);
	
	
	List<EmployeeEntity> findAllByOrderByEmailIdAsc();


	List<EmployeeEntity> findAllByOrderByEmailIdDesc();


	


	
	
	
	
	
	

	
	
	
	

}
