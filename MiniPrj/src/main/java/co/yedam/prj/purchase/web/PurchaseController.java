package co.yedam.prj.purchase.web;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
		String scode = req.getParameter("s_code");
		
		mvo.setU_id(id);
		mvo = Dao.memberSelectSID(mvo);
		
		svo.setI_code(icode);
		svo = DAO.serviceSelect(svo);
		
		vo.setU_id(id);
		vo.setI_code(icode);
		vo.setS_id(mvo.getS_id());
		vo.setI_pay(svo.getI_pay());
		vo.setS_code(Integer.parseInt(scode));
		
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
	
	@RequestMapping("/purchaseUpload.do")
	public String purchaseUpload(Model model, PurchaseVO vo, HttpServletRequest req, MemberVO mvo, ServiceVO svo) {
		int size = 10 * 1024 * 1024;
		String path = "C:\\tmp";
		path = "C:\\Users\\admin\\git\\202106MiniPrj\\MiniPrj\\src\\main\\webapp\\resources\\purchaseUpload";
		String fileName = "";
		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(req,
														  path, 
														  size, 
														  "utf-8", 
														  new DefaultFileRenamePolicy());
			Enumeration files = multi.getFileNames();
			while (files.hasMoreElements()) {
				String itemImage = (String) files.nextElement();
				fileName = multi.getFilesystemName(itemImage);
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		String pid = multi.getParameter("p_id"); 
		
		vo.setP_id(pid);
		vo.setP_image(fileName);
		
		int r = dao.updatePurchase(vo);
		System.out.println(r + "건 수정");
		return "redirect:puchaseAdPopup.do";
	}
	
	//서비스 연장 결제 완료후 업데이트 실행
		@RequestMapping("/purchaseUpdate.do")
		public String purchaseUpdate(Model model, PurchaseVO vo, HttpServletRequest req, MemberVO mvo, ServiceVO svo) {
			
			HttpSession session = req.getSession();
			String id = (String) session.getAttribute("id");
			String icode = req.getParameter("i_code");
			
			svo.setI_code(icode);
			svo = DAO.serviceSelect(svo);
			
			vo.setU_id(id);
			vo.setI_code(icode);
			
			vo = dao.purchaseSelect(vo);
			vo.setI_pay(svo.getI_pay());
			
			if(svo.getWeek() == 2) {
				int r = dao.purchaseUpdate(vo);
				System.out.println(r + "건 수정1");
				
				mvo.setU_id(id);
				mvo.setI_pay(svo.getI_pay());
				int i = Dao.updatePay(mvo);
				System.out.println(i + "건 수정2");
			}else if(svo.getWeek() == 4) {
				int r = dao.purchaseUpdateT(vo);
				System.out.println(r + "건 수정1");
				
				mvo.setU_id(id);
				mvo.setI_pay(svo.getI_pay());
				int i = Dao.updatePay(mvo);
				System.out.println(i + "건 수정2");
			}
			
			
			return "redirect:memberMypage.do";
		}
		
		@RequestMapping("/purchaseDelete.do")
		public String purchaseDelete(Model model, PurchaseVO vo, HttpServletRequest req, MemberVO mvo, ServiceVO svo) {
			
			HttpSession session = req.getSession();
			String id = (String) session.getAttribute("id");
			String icode = req.getParameter("i_code");
			vo.setU_id(id);
			vo.setI_code(icode);
			
			vo = dao.purchaseSelect(vo);
			
			mvo.setU_id(id);
			mvo.setI_pay(vo.getI_pay());
			
			int r = Dao.sPayUpdate(mvo);
			System.out.println(r + "건 수정1");
			
			int k =  dao.deletePurchase(vo);
			System.out.println(k + "건 수정2");
			
			return "redirect:memberMypage.do";
		}
	
}
