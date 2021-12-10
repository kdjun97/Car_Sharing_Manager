package com.mycom.myapp.myuser;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class UserController {
//	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/login/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/login/loginok", method = RequestMethod.POST)
	public String loginCheck(HttpSession session, UserVO vo) {
		
		// 이미 로그인이 되어있다면,
		if (session.getAttribute("login") != null)
			session.removeAttribute("login"); // 그 정보를 삭제
		
		UserVO loginvo = userService.getUserLoginInfo(vo); // 사용자가 입력한 데이터
		if (loginvo != null) {
			session.setAttribute("login", loginvo); // login이란 변수에 loginvo를 셋팅
			System.out.println("로그인 성공!");
			return "redirect:/room/list";
		}
		else {
			System.out.println("로그인 실패!");
			return "redirect:login";
		}
	}
	
	@RequestMapping(value = "/login/logout", method = RequestMethod.GET)
	public String loginCheck(HttpSession session) {
		session.invalidate(); // 세션 변수를 지움
		return "redirect:login";
	}
		
	
}