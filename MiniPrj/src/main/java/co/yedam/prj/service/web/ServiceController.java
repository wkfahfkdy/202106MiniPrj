package co.yedam.prj.service.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.prj.member.vo.MemberVO;
import co.yedam.prj.purchase.service.PurchaseService;
import co.yedam.prj.purchase.vo.PurchaseVO;
import co.yedam.prj.service.service.ServiceService;
import co.yedam.prj.service.vo.ServiceVO;

@Controller
public class ServiceController {
	
	@Autowired
	private ServiceService dao;
	
	@Autowired
	private PurchaseService Pdao;
	
	
	@RequestMapping("/memberAdPopup.do")
	public String adpopup(Model model, MemberVO vo , HttpServletRequest req, ServiceVO svo, PurchaseVO pvo) {
		String id = req.getParameter("id");
		svo.setU_id(id);
		
		//리스트뽑기전에 
		
		model.addAttribute("service", dao.serviceSelectList(svo));
		return "memberAdPopup";
	}
	
	@RequestMapping("/detailService.do")
	public String detailService(Model model, MemberVO vo , HttpServletRequest req, ServiceVO svo) {
		
		
		return "detailService";
	}

}
