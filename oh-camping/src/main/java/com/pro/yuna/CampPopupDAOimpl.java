package com.pro.yuna;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CampPopupDAOimpl implements CampPopupDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int getCampPopupCount() {
		return this.sqlSession.selectOne("popupCount");
	}
	
	@Override
	public List<CampPopupDTO> getCampPopupList(PageDTO dto) {
		return this.sqlSession.selectList("popupList", dto);
	}

	@Override
	public int insertCampPopup(CampPopupDTO dto) {
		return this.sqlSession.insert("popupInsert", dto);
	}

	@Override
	public CampPopupDTO campPopupCont(int no) {
		return this.sqlSession.selectOne("popupContent", no);
	}

	@Override
	public int modifyCampPopup(CampPopupDTO dto) {
		return this.sqlSession.update("popupModify", dto);
	}

	@Override
	public int useCampPopup() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteCampPopup(int no) {
		return this.sqlSession.delete("popupDel", no);
	}

	@Override
	public void updatePopupSequence(int no) {
		this.sqlSession.update("popupSeq", no);
		
	}

	@Override
	public List<CampPopupDTO> getCampPopupList() {
		return this.sqlSession.selectList("popupListMain");
	}

	

}
