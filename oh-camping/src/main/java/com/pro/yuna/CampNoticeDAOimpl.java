package com.pro.yuna;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CampNoticeDAOimpl implements CampNoticeDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int getCampNoticeListCount() {
		return this.sqlSession.selectOne("noticeListCount");
	}

	@Override
	public List<CampNoticeDTO> getCampNoticeList(PageDTO dto) {
		return this.sqlSession.selectList("noticeList", dto);
	}

	@Override
	public int insertCampNotice(CampNoticeDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void readCampNoticeCount(int no) {
		this.sqlSession.update("noticeRead", no);
	}

	@Override
	public CampNoticeDTO CampNoticeCont(int no) {
		return this.sqlSession.selectOne("noticeContent", no);
	}

	@Override
	public int updateCampNotice(CampNoticeDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteCampNotice(int no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateSequence(int no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int searchCampNoticeCount(String field, String keyword) {
		return this.sqlSession.selectOne(field, keyword);
	}

	@Override
	public List<CampNoticeDTO> searchCampNoticeList(PageDTO dto) {
		return this.sqlSession.selectList(dto.getField()+"1", dto);
	}
	
}
