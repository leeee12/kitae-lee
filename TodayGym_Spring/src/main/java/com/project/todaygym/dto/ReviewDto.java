package com.project.todaygym.dto;

import java.security.Timestamp;

import lombok.Data;

@Data
public class ReviewDto {
	private int r_no;
	private String r_cate;
	private String r_title;
	private String r_contents;
	private String m_id;
	private Timestamp r_date;
	private int r_score;
}