package com.pro.yuna;

public interface CampAdminDAO {
	int adminLogin(String id, String pwd);
	CampAdminDTO getAdmin(String id);
}
