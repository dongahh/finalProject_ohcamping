package com.pro.ogjmodel;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pro.yuna.CampNoticeDTO;
import com.pro.yuna.PageDTO;

@Repository
public class ReviewDAOImpl implements ReviewDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;


	@Override
	public int getListCount() { //리뷰 갯수 불러오기
		return this.sqlSession.selectOne("getReviewListCount");
	}

	@Override
	public List<ReviewDTO> getReviewList(ReviewPageDTO dto) { //리뷰 불러오기
		return this.sqlSession.selectList("getReviewList",dto);
	}
	
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public int insertReview(ReviewDTO dto) {
		// TODO Auto-generated method stub
		return this.sqlSession.insert("insertReview", dto);
	}

	@Override
	public void readCount(int no) {
		this.sqlSession.update("reviewReadCount", no);
		
	}

	@Override
	public ReviewDTO ReviewCont(int no) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectOne("getReviewCont",no);
	}

	@Override
	public int updateReview(ReviewDTO dto) {
		
		return this.sqlSession.update("updateReview", dto);
	}

	@Override
	public int deleteReview(int no) {
		
		return this.sqlSession.delete("deleteReview", no);
	}

	@Override
	public void updateSequence(int no) {
		this.sqlSession.update("updateSequence", no);
		
	}

	@Override
	public List<ReviewSubDTO2> getReviewSubData(String id) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectList("getReviewSubData",id);
	}

	@Override
	public String getReviewSubData2(int pay_no) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectOne("getReviewSubData2",pay_no);
	}
	@Override
	public String getReviewSubData3(int room_no) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectOne("getReviewSubData3",room_no);
	}
	
	@Override
	public List<ReviewSubDTO3> getdetail_roomno(int room_no) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectList("getReviewSubData4",room_no);
	}

	@Override
	public int searchReview(String field, String keyword) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectOne(field, keyword);
	}

	@Override
	public List<ReviewDTO> searchReviewList(ReviewPageDTO dto) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectList(dto.getField()+"1", dto);
	}

	@Override
	public int insertDeleteReview(ReviewDTO dto) {
		// TODO Auto-generated method stub
		return this.sqlSession.insert("insertDeleteReview", dto);
	}

	@Override
	public int getDeleteListCount() {
		// TODO Auto-generated method stub
		return this.sqlSession.selectOne("getDeleteReviewListCount");
	}

	@Override
	public List<ReviewDTO> getDeleteReviewList(ReviewPageDTO dto) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectList("getDeleteReviewList",dto);
	}

	@Override
	public void updateResetSequence(int no) {
		this.sqlSession.update("updateResetSequence", no);
		
	}

	@Override
	public ReviewDTO getDeleteReviewCont(int no) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectOne("getDeleteReviewCont",no);
	}

	@Override
	public int insertReview2(ReviewDTO dto) {
		// TODO Auto-generated method stub
		return this.sqlSession.insert("insertReview2", dto);
	}

	@Override
	public int deleteDeleteReview(int no) {
		// TODO Auto-generated method stub
		return this.sqlSession.delete("deleteDeleteReview", no);
	}





}
