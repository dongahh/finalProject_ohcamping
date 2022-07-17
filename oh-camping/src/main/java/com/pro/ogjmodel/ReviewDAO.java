package com.pro.ogjmodel;

import java.util.List;



public interface ReviewDAO {
	
	//리스트 갯수 
	public int getListCount();  
	
	//삭제된 리뷰 리스트 갯수 
	public int getDeleteListCount();  
	
	//리뷰 리스트
	public List<ReviewDTO> getReviewList(ReviewPageDTO dto);
	
	//삭제된 리뷰 리스트
	public List<ReviewDTO> getDeleteReviewList(ReviewPageDTO dto);
	
	//리뷰 작성
	public int insertReview(ReviewDTO dto);
	
	//삭제된 리뷰
	public int insertDeleteReview(ReviewDTO dto);
	
	//조회수
	public void readCount(int no);
	
	
	//상세내역
	public ReviewDTO ReviewCont(int no);
	
	// 리뷰 수정
	public int updateReview(ReviewDTO dto);
	
	// 리뷰 삭제
	public int deleteReview(int no);
	
	// 리뷰번호 최신화
	public void updateSequence(int no);
	
	// 검색
	public int searchReview(String field, String keyword);
	public List<ReviewDTO> searchReviewList(ReviewPageDTO dto);
	
	public List<ReviewSubDTO2> getReviewSubData(String id);
	
	
	public String getReviewSubData2(int pay_no);
	public String getReviewSubData3(int pay_no);
	public List<ReviewSubDTO3> getdetail_roomno(int pay_no);
	
	// 복구시 기존review 테이블 번호 한칸식 위로
	public void updateResetSequence(int no);
	// delete review 데이터 가져오기
	public ReviewDTO getDeleteReviewCont(int no);
	// 가져온 데이터 review 에 넣어주기
	public int insertReview2(ReviewDTO dto);
	// delete review 데이터 삭제
	public int deleteDeleteReview(int no);
	

}
