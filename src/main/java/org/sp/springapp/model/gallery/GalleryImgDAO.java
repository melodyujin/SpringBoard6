package org.sp.springapp.model.gallery;

import java.util.List;

import org.sp.springapp.domain.GalleryImg;

public interface GalleryImgDAO {

	public void insert(GalleryImg galleryImg); //한건 넣기
	public List selectAll(); //모든 데이터 가져오기
	public GalleryImg select(int gallery_img_idx); //한건 가져오기
	public void update(GalleryImg galleryImg);
	public void delete(int gallery_img_idx);
}
