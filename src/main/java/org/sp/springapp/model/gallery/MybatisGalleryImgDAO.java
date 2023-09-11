package org.sp.springapp.model.gallery;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.sp.springapp.domain.GalleryImg;
import org.sp.springapp.exception.GalleryImgException;
import org.sp.springapp.mybatis.MybatisConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class MybatisGalleryImgDAO implements GalleryImgDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void insert(GalleryImg galleryImg) throws GalleryImgException {
		
		int result = sqlSessionTemplate.insert("GalleryImg.insert", galleryImg);
		
		//result=0; 
		
		if(result==0) {
			throw new GalleryImgException("이미지 등록에 실패");
		}
	}

	@Override
	public List selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public GalleryImg select(int gallery_img_idx) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(GalleryImg galleryImg) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int gallery_img_idx) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteByGalleryIdx(int gallery_idx) throws GalleryImgException{
		int result=sqlSessionTemplate.delete("GalleryImg.deleteByGalleryIdx", gallery_idx);
		if(result<1) {
			throw new GalleryImgException("이미지레코드 삭제실패");
		}
	}
}
