package com.mycom.myapp.room;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RoomController {
	@Autowired
	RoomDAO roomDAO;
	
	@RequestMapping(value = "/room/list", method = RequestMethod.GET)
	public String roomlist(Model model) {
		model.addAttribute("list", roomDAO.getRoomList());
		return "homepage";
	}
}
