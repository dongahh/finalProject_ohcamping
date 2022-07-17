package com.pro.yuna;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CampMemberDAOimpl implements CampMemberDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int campIdCheck(String id) { // 아이디 중복 확인
		// TODO Auto-generated method stub
		return this.sqlSession.selectOne("idCheck", id);
	}

	@Override
	public int joinCampMember(CampMemberDTO dto) {
		// TODO Auto-generated method stub
		return this.sqlSession.insert("joinMember", dto);
	}


	@Override
	public int loginCampMember(String id, String pwd) {
		int result = 0;
		int idCheck = this.sqlSession.selectOne("idCheck", id);
		if (idCheck == 0) { // 아이디가 존재하지 않음
			result = 0;
		}else { //아이디가 존재
			String dbPwd = this.sqlSession.selectOne("getPassword", id);
			if (pwd.equals(dbPwd)) { // 비밀번호 일치
				result = 1;
			}else { // 비밀번호 불일치
				result = -1;
			}
		}
		
		return result;
	}

	@Override
	public int memberEmailCheck(String id, String email) {
		int result = 0;
		String db_email = this.sqlSession.selectOne("emailCheck", id);
		
		if (email.equals(db_email)) {
			result = 1;		
		}else {
			// 이메일이 다른 경우
			result = -1;
		}
		return result;
	}
	
	
	@Override
	public String getCampMemberPassword(String id) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectOne("getPassword", id);
	}
	
	
	@Override
	public CampMemberDTO getMember(String id) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectOne("getMember", id);
	}

	

	

}
