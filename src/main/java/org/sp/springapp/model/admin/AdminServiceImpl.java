package org.sp.springapp.model.admin;

import org.sp.springapp.domain.Admin;
import org.sp.springapp.exception.AdminException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminDAO adminDAO;
	
	@Override
	public Admin login(Admin admin) throws AdminException{
		
		Admin dto =adminDAO.login(admin);
		
		if(dto==null) {
			throw new AdminException("로그인 정보가 올바르지 않습니다");
		}
		
		return dto;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void regist(Admin admin) throws AdminException{
		adminDAO.insert(admin);
	}
	

}
