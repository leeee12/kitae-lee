package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController { //관리자 컨트롤러
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	//회원관리 페이지
	@GetMapping("adMem")
	public String adMemMove() {
		logger.info("adMemMove()");
		
		return "adMem";
	}
}