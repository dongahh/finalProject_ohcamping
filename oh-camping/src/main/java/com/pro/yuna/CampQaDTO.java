package com.pro.yuna;

import lombok.Data;

@Data
public class CampQaDTO {
	private int qa_no;
	private String qa_writer;
	private String qa_userid;
	private String qa_type;
	private String qa_title;
	private String qa_cont;
	private String qa_date;
	private int qa_hit;
	private int qa_group;
	private int qa_indent;
}
