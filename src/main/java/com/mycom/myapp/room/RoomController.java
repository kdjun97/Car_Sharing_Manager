package com.mycom.myapp.room;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycom.myapp.board.BoardVO;
import com.mycom.myapp.myuser.UserDAO;
import com.mycom.myapp.myuser.UserService;
import com.mycom.myapp.myuser.UserVO;

@Controller
public class RoomController {
	@Autowired
	RoomService roomService;
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/room/list", method = RequestMethod.GET)
	public String roomlist(Model model) {
		model.addAttribute("list", roomService.getRoomList());
		return "homepage";
	}
	
	// 방 만들기 버튼 처리
	@RequestMapping(value = "/room/makeRoom/{id}", method = RequestMethod.GET)
	public String roomMake(@PathVariable("id") int id, Model model) {
		
		model.addAttribute("id", id);		
		
		return "makeroom";
	}
	
	@RequestMapping(value = "/room/makeok", method = RequestMethod.POST)
	public String roomMakeOK(RoomVO rvo) {
		int i = roomService.insertRoom(rvo);
		
		if (i==0)
			System.out.println("방 만들기 실패");
		else
		{
			System.out.println("방 만들기 성공!!");
			UserVO uservo = userService.getUser(rvo.getRoom_master());
			uservo.setRoom_num(rvo.getRoom_master());
			userService.updateRoomNum(uservo);
		}
		
		return "redirect:/room/list";
	}
	
	// 회원정보 수정 
	@RequestMapping(value = "/room/editUser/{id}", method = RequestMethod.GET)
	public String roomEditUser(@PathVariable("id") int id, Model model) {
		System.out.println("Edit user 안");
		
		UserVO userVO = userService.getUser(id);
		model.addAttribute("userVO", userVO);
		
		return "edituser";
	}
	
	@RequestMapping(value = "/room/editok", method = RequestMethod.POST)
	public String editPostOK(UserVO vo) {
		int i = userService.updateUser(vo);
		if (i==0)
			System.out.println("데이터 수정 실패");
		else
			System.out.println("데이터 수정 성공!!");
		return "redirect:../login/login";
	}
	
	@RequestMapping(value = "/room/enter/{num}/{id}", method = RequestMethod.GET)
	public String roomEnter(@PathVariable("num") int num, @PathVariable("id") int id) {
		System.out.println("방번호:"+num+"uid"+id);
		RoomVO rvo = roomService.getRoom(num);
		UserVO uvo = userService.getUser(id);
		return "";
	}
	
}
