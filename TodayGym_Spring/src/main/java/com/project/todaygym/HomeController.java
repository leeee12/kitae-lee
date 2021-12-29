package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	// 시작페이지로 이동
	@GetMapping("/")
	public String welcome() {
		logger.info("welcome()");
		
		return "welcome";
	}
	
	// home으로 이동
	@GetMapping("home")
	public String home() {
		logger.info("home()");
		
		return "home";
	}
	
	
	
	// 관리자 메인으로 이동
	@GetMapping("adMainMove.ad")
	public String adMainMove() {
		logger.info("adMainMove()");
		
		return "admin/adMain";
	}
} // class end
