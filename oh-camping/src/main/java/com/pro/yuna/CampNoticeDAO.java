package com.pro.yuna;

import java.util.List;

public interface CampNoticeDAO {
	
	public int getCampNoticeListCount();
	
	public List<CampNoticeDTO> getCampNoticeList(PageDTO dto);
	
	public int insertCampNotice(CampNoticeDTO dto);
	
	public void readCampNoticeCount(int no);
	
	public CampNoticeDTO CampNoticeCont(int no);
	
	public int updateCampNotice(CampNoticeDTO dto);
	
	public int deleteCampNotice(int no);
	
	public void updateSequence(int no);
	
	public int searchCampNoticeCount(String field, String keyword);
	
	public List<CampNoticeDTO> searchCampNoticeList(PageDTO dto);
	
}
