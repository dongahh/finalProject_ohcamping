package com.pro.yuna;

public interface CampMemberDAO {
	
	int campIdCheck(String id); // 아이디 중복 확인
	
	int joinCampMember(CampMemberDTO dto);
	
	int loginCampMember(String id, String pwd);
	
	int memberEmailCheck(String id, String email);
	
	String getCampMemberPassword(String id);
	
	CampMemberDTO getMember(String id);
	
}
