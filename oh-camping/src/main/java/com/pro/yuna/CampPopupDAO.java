package com.pro.yuna;

import java.util.List;

public interface CampPopupDAO {
	
	public int getCampPopupCount(); // 등록된 팝업 갯수 조회
	
	public List<CampPopupDTO> getCampPopupList(PageDTO dto); // 팝업 목록 조회
	
	public int insertCampPopup(CampPopupDTO dto); // 팝업추가
	
	public CampPopupDTO campPopupCont(int no); // 팝업 상세내용 조회
	
	public int modifyCampPopup(CampPopupDTO dto); // 팝업 수정
	
	public int useCampPopup(); // 팝업 사용여부 변경
	
	public int deleteCampPopup(int no); // 팝업 삭제
	
	public void updatePopupSequence(int no);
	
	public List<CampPopupDTO> getCampPopupList();
	
}
