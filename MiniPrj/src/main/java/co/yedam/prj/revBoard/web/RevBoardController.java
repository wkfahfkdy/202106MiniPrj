package co.yedam.prj.revBoard.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.yedam.prj.revBoard.service.RevBoardService;
import co.yedam.prj.revBoard.vo.RevBoardVO;

@Controller
public class RevBoardController {
	
	@Autowired
	private RevBoardService dao;
	
	@RequestMapping("/revBoardList.do")
	public String revBoardList(Model model) {
		
		model.addAttribute("list", dao.revBoardSelectList());
		
		return "";
	}
	
	@RequestMapping("/revBoardListPaging.do")
	public String revBoardListPaging(Model model, RevBoardVO vo,@RequestParam(value = "start", required = false, defaultValue="1") int start) {
		
		vo.setFirstRecordIndex(1 + (start-1)*10);
		vo.setLastRecordIndex(10*start);
		vo.setTotalCnt(dao.tableCount());
		
		model.addAttribute("bolist",dao.revBoardSelectListPaging(vo));
		
		
		return "revBoard/revBoardList";
	}
	
}
