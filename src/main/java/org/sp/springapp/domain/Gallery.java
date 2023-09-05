package org.sp.springapp.domain;

import lombok.Data;

@Data
public class Gallery {

	private int gallery_idx;
	private String title;
	private String writer;
	private String regdate;
	private int hit;
	private String content;
	
}
