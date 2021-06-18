package co.yedam.prj;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.prj.bread.service.BreadService;
import co.yedam.prj.bread.vo.BreadVO;
import co.yedam.prj.member.serivce.MemberService;
import co.yedam.prj.member.vo.MemberVO;
import co.yedam.prj.purchase.service.PurchaseService;
import co.yedam.prj.purchase.vo.PurchaseVO;


@Controller
public class HomeController {
	
	@Autowired
	private PurchaseService dao;
	
	@Autowired
	private MemberService Mdao;
	
	@Autowired
	private BreadService Bdao;
	
	@RequestMapping("/home.do")
	public String home(Model model, PurchaseVO pvo, MemberVO mvo, BreadVO bvo) {
		
		model.addAttribute("purchaseMainList", dao.purchaseMailList());
		model.addAttribute("purchaseShowUp", dao.purchaseShowUp());
		model.addAttribute("storeList", Bdao.storeRandomListT() );
		return "layout/main";
	}
	

	
}
