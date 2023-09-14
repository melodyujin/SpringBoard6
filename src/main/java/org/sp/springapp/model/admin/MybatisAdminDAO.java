package org.sp.springapp.model.admin;

import org.mybatis.spring.SqlSessionTemplate;
import org.sp.springapp.domain.Admin;
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

}
