package co.yedam.prj.service.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.prj.member.vo.MemberVO;
import co.yedam.prj.service.service.ServiceService;

@Controller
public class ServiceController {
	
	@Autowired
	private ServiceService dao;
	
	
	@RequestMapping("/memberAdPopup.do")
	public String adpopup(Model model, MemberVO vo , HttpServletRequest req) {
	
		
		model.addAttribute("service", dao.serviceSelectList());
		return "memberAdPopup";
	}
}
