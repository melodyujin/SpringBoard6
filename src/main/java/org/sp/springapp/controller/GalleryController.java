package org.sp.springapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//갤러리와 관련된 요청을 처리하는 하위 컨트롤러
@Controller
public class GalleryController {
	
	//게시판 목록 요청  처리
	@RequestMapping(value="/gallery/list",method=RequestMethod.GET)
	public ModelAndView getList() {
		//3단계 : 일 시키기
		
		//4단계 : 목록 저장
		ModelAndView mav = new ModelAndView("gallery/list");
		
		return mav;
	}

	//글스기 폼 요청
	@RequestMapping(value="/gallery/registform", method=RequestMethod.GET)
	public String getForm() {
		return "gallery/regist";
		
	}
	
	//글스기 요청 처리
	@RequestMapping(value="/gallery/regist", method=RequestMethod.POST)
	public ModelAndView regist() {
		//3단계 : 오라클에 글등록 + 파일 업로드 + 
		
		
		//글쓰기 list를 재요청
		
		return null;
	}
}
