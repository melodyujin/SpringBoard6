package org.sp.springapp.model.gallery;

import java.util.List;

import org.sp.springapp.domain.Gallery;

public interface GalleryDAO {
	public void insert(Gallery gallery); //등록
	public List selectAll(); //모든 리스트 가져오기
	public Gallery select(int gallery_idx); //한건 가져오기
	public void update(Gallery gallery); //수정
	public void delete(int gallery_idx); //삭제
}
