package com.pro.cda;

import java.util.List;

import com.pro.yuna.PageDTO;

public interface AdminQaDAO {
	
	//전체 문의 리스트 가져오기
	public List<AdminQaDTO> getQaList(PageDTO dto);

	//qa 글 수 가져오기
	public int getqacount();
	
	//검색 리스트 가져오기
	public List<AdminQaDTO> getQaSearh(PageDTO dto);
	
	//검색 qa리스트 수
	public int adminqasearchcount(String field, String keyword);
	
	//문의 세부사항 확인.	
	public AdminQaDTO getqacont(int no);
	
	//조회수 증가
	public int adminqaupcount(int no);
	
	//답글 쓰기 완료
	public int adminqawrite(AdminQaDTO dto);
	
	//답글 수정 완료
	public int adminqaupdate(AdminQaDTO dto);
	
	//답글 삭제 완료
	public int adminqadelete(int no);
	
	//문의글 삭제 완료
	public int adminqareplydelte(int no);
	
	
	

}
