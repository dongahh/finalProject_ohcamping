package com.pro.kdc;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pro.yuna.CampNoticeDTO;
import com.pro.yuna.PageDTO;

@Repository
public class adminNoticeDAOImpl implements adminNoticeDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertNotice(adminNoticeDTO dto) {
		
		return this.sqlSession.insert("adminNotice", dto);
		
	}
	
	@Override
	public int insertNotice2(adminNoticeDTO dto) {
		return this.sqlSession.insert("adminNotice2", dto);
	}

	@Override
	public List<CampNoticeDTO> getCampNoticeList(noticePageDTO dto) {
		return this.sqlSession.selectList("adminNoticeList", dto);
	}

	@Override
	public int getCampNoticeListCount() {
		return this.sqlSession.selectOne("adminNoticeListCount");
	}

	@Override
	public void readAdminNoticeCount(int no) {
		this.sqlSession.update("adminNoticeRead", no);
		
	}

	@Override
	public CampNoticeDTO adminNoticeCont(int no) {
		return this.sqlSession.selectOne("adminNoticeContent", no);
	}

	@Override
	public int adminNoticeDelete(int no) {
		return this.sqlSession.delete("noticeDelete", no);
	}

	@Override
	public int adminNoticeUpdate(adminNoticeDTO dto) {
		return this.sqlSession.update("noticeUpdate", dto);
	}

	@Override
	public int adminNoticeUpdate2(adminNoticeDTO dto) {
		return this.sqlSession.update("noticeUpdate2", dto);
	}

	@Override
	public int adminNoticeUpdate3(adminNoticeDTO dto) {
		return this.sqlSession.update("noticeUpdate3", dto);
	}




	
	
	
}
