package com.pro.kdc;

import java.util.List;

import com.pro.yuna.CampNoticeDTO;

public interface adminNoticeDAO {

	public int insertNotice(adminNoticeDTO dto);
	public int insertNotice2(adminNoticeDTO dto);
	
	public List<CampNoticeDTO> getCampNoticeList(noticePageDTO dto);

	public int getCampNoticeListCount();
	
	public void readAdminNoticeCount(int no);
	
	public CampNoticeDTO adminNoticeCont(int no);
	
	public int adminNoticeDelete(int no);
	
	public int adminNoticeUpdate(adminNoticeDTO dto);
	public int adminNoticeUpdate2(adminNoticeDTO dto);
	public int adminNoticeUpdate3(adminNoticeDTO dto);
	
}
