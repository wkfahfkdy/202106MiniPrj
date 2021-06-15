package co.yedam.prj.purchase.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.prj.member.serivce.MemberService;
import co.yedam.prj.member.vo.MemberVO;
import co.yedam.prj.purchase.service.PurchaseService;
import co.yedam.prj.purchase.vo.PurchaseVO;
import co.yedam.prj.service.service.ServiceService;
import co.yedam.prj.service.vo.ServiceVO;

@Controller
public class PurchaseController {
	
	@Autowired
	private PurchaseService dao;
	
	@Autowired
	private MemberService Dao;
	
	@Autowired
	private ServiceService DAO;
	
	//결제 완료후 인서트 실행
	@RequestMapping("/purchaseInsert.do")
	public String purchaseInsert(Model model, PurchaseVO vo, HttpServletRequest req, MemberVO mvo, ServiceVO svo) {
		
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		String icode = req.getParameter("i_code");
		
		mvo.setU_id(id);
		mvo = Dao.memberSelectSID(mvo);
		
		svo.setI_code(icode);
		svo = DAO.serviceSelect(svo);
		
		vo.setU_id(id);
		vo.setI_code(icode);
		vo.setS_id(mvo.getS_id());
		vo.setI_pay(svo.getI_pay());
		
		if(svo.getWeek() == 2) {
			int r = dao.insertPurchase(vo);
			System.out.println(r + "건 입력");
		}else if(svo.getWeek() == 4) {
			int r = dao.insertPurchaseT(vo);
			System.out.println(r + "건 입력");
		}
		
		
		
		return "redirect:memberMypage.do";
	}
	@RequestMapping("/puchaseAdPopup.do")
	public String puchaseAdPopup(Model model, PurchaseVO vo, HttpServletRequest req, MemberVO mvo, ServiceVO svo) {
		
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		vo.setU_id(id);
		
		model.addAttribute("purchaseList", dao.purchaseSelectList(vo));
		
		return "puchaseAdPopup";
	}
	
	
}
