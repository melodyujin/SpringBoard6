package org.sp.springapp.model.admin;

import org.mybatis.spring.SqlSessionTemplate;
import org.sp.springapp.domain.Admin;
import org.sp.springapp.exception.AdminException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MybatisAdminDAO implements AdminDAO{
	
	@Autowired
	private SqlSessionTemplate sqlsessionTemplate;
	
	@Override
	public Admin login(Admin admin) {
		Admin dto=sqlsessionTemplate.selectOne("Admin.login", admin);
		return dto;
	}
	
	public void insert(Admin admin) throws AdminException{
		
		int result=sqlsessionTemplate.insert("Admin.insert", admin);
		
		if(result==0) {
			throw new AdminException("관리자 등록을 실패했어요");
		}
	}

}
