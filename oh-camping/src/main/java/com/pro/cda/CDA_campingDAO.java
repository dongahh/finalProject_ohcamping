package com.pro.cda;

import java.util.List;

import com.pro.yuna.CampMemberDTO;

public interface CDA_campingDAO {

	//예약 리스트 보여주기
	//public List<CDA_roomDTO> cda_getRoomList(Long num);
	
	//예약 리스트 보여주기2
	public List<CDA_roomDTO> cda_getRoomList(String date);
	
	
	//예약한 정보 리스트
	public CDA_roomDTO cda_getreserveRoom(Long num);
	
	//예약 완료 페이지로 이동
	//회원번호 받아오기
	public int cda_getmemmo(String id);
	//결제
	public int cda_paymentConfirm(CDA_paymentDTO paymentdto);
	
	//결제번호 가져오기
	public int cda_getpatmentno();
	//결제 디테일
	public int cda_reserveComfirmdetail(CDA_paymentdetailDTO paymentdetailDTO);
	//결제 삭제시 camp_room table 객실유무 변경
	public int cda_changeRoomToImpossi(int no);
	
	
	//예약 취소시
	//결제 디테일 삭제
	public int cda_paymentDetailremCancel(int no);	
	//결제 삭제
	public int cda_paymentCancel(int no);
	//roomno가져오기
	public List<Integer> cda_getroomno(int no);
	//예약 취소시  camp_room table 객실유무 변경
	public int cda_changeRoomToPossi(int no);
	
	
	// 동찬 - 예약 확인 페이지 로직
	public CDA_paymentDTO getpaymentInfo(int no);
	
	public List<CDA_paymentdetailDTO> getpaymentdetailInfo(int no);
	
	public int resnoCheck(int no);
	
	
	
	//로그인 세션 정보(나중에 병합시 삭제!!!!!)
	public CampMemberDTO getsessionid(String id);
	
}
