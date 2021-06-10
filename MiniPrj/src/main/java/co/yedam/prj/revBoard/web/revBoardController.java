package co.yedam.prj.revBoard.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.prj.revBoard.service.revBoardService;

@Controller
public class revBoardController {
	
	@Autowired
	private revBoardService dao;
	
	@RequestMapping("/revBoardList.do")
	public String revBoardList(Model model) {
		
		model.addAttribute("list", dao.revBoardSelectList());
		
		return "revBoard/revBoardList";
	}
	
//	@RequestMappinga("/revBoardListPaging.do")
//	public String revBoardListPaging(Model model) {
//		
//		model.addAttribute("list", dao.revBoardSelectListPaging(0))
//	}
	
}
