package com.pro.yuna;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CampAdminDAOimpl implements CampAdminDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int adminLogin(String id, String pwd) {
		int result = 0;
		int idCheck = this.sqlSession.selectOne("adminIdCheck", id);
		if (idCheck == 0) { // 아이디가 존재하지 않음
			result = 0;
		}else { //아이디가 존재
			String dbPwd = this.sqlSession.selectOne("getAdminPassword", id);
			if (pwd.equals(dbPwd)) { // 비밀번호 일치
				result = 1;
			}else { // 비밀번호 불일치
				result = -1;
			}
		}
		
		return result;
	}

	@Override
	public CampAdminDTO getAdmin(String id) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectOne("getAdmin", id);
	}

}
