package co.yedam.prj.revBoard.web;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.prj.revBoard.service.revBoardService2;

@Controller
public class revBoardController2 {
	
	@Autowired
	private revBoardService2 dao;
	
	@RequestMapping("/review2.do")
	public String revBoardList(Model model) {
		
		model.addAttribute("list", dao.revBoardSelectList());
		
		return "review/review";
	}
	


	
	@RequestMapping("/revBoardEnrollment.do")
	public String revBoardEnrollment(Model model) {
		
		
		
		return "review/revBoardEnrollment";
	}
	
	
	
	
}
