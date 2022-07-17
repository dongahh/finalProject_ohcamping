package com.pro.kdc;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class campingDAOImpl implements campingDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<campingDTO> getRoomList() {
		
		return this.sqlSession.selectList("all");
		
		
	}

	
	
}
