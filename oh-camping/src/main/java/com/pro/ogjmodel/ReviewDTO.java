package com.pro.ogjmodel;

import lombok.Data;

@Data
public class ReviewDTO {
	
	private int review_no;
	private String review_id;
	private String review_roomname;
	private String review_title;
	private String review_cont;
	private String review_date;
	private String review_orderdate;
	private int views;
	
}
