package com.pro.cda;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pro.yuna.PageDTO;

@Repository
public class AdminQaDAOimpl implements AdminQaDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<AdminQaDTO> getQaList(PageDTO dto) {
		
		return this.sqlSession.selectList("adminQaGetList", dto);
		
	}


	@Override
	public int adminqasearchcount(String field, String keyword) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectOne(field, keyword);
	}
	
	@Override
	public List<AdminQaDTO> getQaSearh(PageDTO dto) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectList(dto.getField()+"1", dto);
	}



	@Override
	public int getqacount() {
		
		return this.sqlSession.selectOne("adminqagetcount");
	}


	@Override
	public AdminQaDTO getqacont(int no) {
		
		return this.sqlSession.selectOne("admingetcont", no);
	}

	

	@Override
	public int adminqaupcount(int no) {
		
		return this.sqlSession.update("adminqaupcount", no);
	}


	@Override
	public int adminqawrite(AdminQaDTO dto) {
		// TODO Auto-generated method stub
		return this.sqlSession.insert("adminqawrite", dto);
	}


	@Override
	public int adminqaupdate(AdminQaDTO dto) {
		// TODO Auto-generated method stub
		return this.sqlSession.update("adminqaupdate", dto);
	}


	@Override
	public int adminqadelete(int no) {
		// TODO Auto-generated method stub
		return this.sqlSession.delete("adminqadelete",no);
	}


	@Override
	public int adminqareplydelte(int no) {
		// TODO Auto-generated method stub
		return this.sqlSession.delete("adminqareplydelete", no);
	}
	
	
	
	
	
}
