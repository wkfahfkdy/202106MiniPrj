package co.yedam.prj.member.web;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.prj.bread.service.BreadService;
import co.yedam.prj.bread.vo.BreadVO;
import co.yedam.prj.common.Paging;
import co.yedam.prj.member.serivce.MemberService;
import co.yedam.prj.member.vo.MemberVO;
import co.yedam.prj.qna.service.QnaService;
import co.yedam.prj.qna.vo.QnaVO;
import co.yedam.prj.revBoard.service.revBoardService2;
import co.yedam.prj.revBoard.vo.revBoardVO2;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService dao;
	
	@Autowired
	private BreadService Dao;
	
	@Autowired
	private QnaService Qdao;
	
	@Autowired
	private revBoardService2 Rdao;
	
	@RequestMapping("/businessMemberPage.do")
	public String businessMemberPage(Model model, MemberVO vo, HttpServletRequest req, BreadVO bvo) {
		String id = req.getParameter("id");
		vo.setU_id(id);
		bvo.setU_id(id);
		
		model.addAttribute("store", Dao.storeSelectAll(bvo));
		model.addAttribute("sPay", dao.memberSelectJW(vo));
		model.addAttribute("memberList", dao.memberSelectListIC(vo));
		
		return "member/businessMemberPage";
	}
	
	@RequestMapping("/memberPage.do")
	public String memberPage(Model model, MemberVO vo, HttpServletRequest req, revBoardVO2 revo, QnaVO qvo) {
		String id = req.getParameter("id");
		vo.setU_id(id);
		revo.setU_id(id);
		qvo.setU_id(id);
		
		model.addAttribute("qna", Qdao.qnaCount(qvo));
		model.addAttribute("review", Rdao.revBoardCount(revo));
		model.addAttribute("member", dao.memberSelectJW(vo));
		return "member/memberPage";
	}

	@RequestMapping("/memberLogin.do")
	public String memberLogin() {
		return "member/memberLogin";
	}
	
	@RequestMapping("/adminDelete.do")
	public String adminDelete(HttpServletRequest req, MemberVO vo, BreadVO bvo) {
		String id = req.getParameter("id");
		vo.setU_id(id);
		int r = dao.deleteMember(vo);
		System.out.println(r + "??? ??????");
		
		return "redirect:memberInfoListPaging.do";
	}
	
	@RequestMapping("/memberDelete.do")
	public String memberDelete(HttpServletRequest req, MemberVO vo, BreadVO bvo) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		vo.setU_id(id);
		int r = dao.deleteMember(vo);
		System.out.println(r + "??? ??????");
		
//		vo = dao.memberSelectSID(vo);
//		bvo.setS_id(vo.getS_id());
//		int i = Dao.storeDelete(bvo);
//		System.out.println(i + "??? ??????2");
//		int k = Dao.breadDeleteAll(bvo);
//		System.out.println(k + "??? ??????3");
		
		session.invalidate();

		
		return "redirect:home.do";
	}
	
	@RequestMapping("/memberLoginB.do")
	public String memberLoginB(Model model, MemberVO vo, HttpServletRequest req) {
		String path = "";
		if(dao.memberSelect(vo) != 0) {
			HttpSession session = req.getSession();
			session.setAttribute("id", vo.getU_id());
			path = "redirect:home.do";
		}else {
			path = "member/memberLoginFail";
		};
		
		return path;
	}
	//???????????????????????? ??????
	@RequestMapping("/memberJoinWait.do")
	public String memberJoinWait(Model medel, MemberVO vo, HttpServletRequest req){
		String id = req.getParameter("id");
		vo.setU_id(id);
		vo = dao.memberSelectJW(vo);
		medel.addAttribute("member", vo);
		return "member/memberJoinWait";	
	}
	//????????????
	@RequestMapping("/memberJoinWaitUpdate.do")
	public String memberJoinWaitUpdate(Model model, MemberVO vo, HttpServletRequest req, BreadVO bvo) {
		int r = dao.joinWaitUpadte(vo);
		System.out.println(r + "??? ??????");
		if(r > 0) {
			//member???????????? ?????? ?????? ?????? 1??? vo??? ??????
			vo = dao.memberSelectJW(vo);
			
			bvo.setU_id(vo.getU_id());
			bvo.setU_name(vo.getU_name());
			bvo.setS_tel(vo.getU_tel());
			bvo.setS_adr(vo.getU_adr());
			
			int i = Dao.storeInsert(bvo);
			System.out.println(i + "??? ??????");
			//storelist vo??? ?????? s_id productVO??? ?????? ProductVO??? ?????? ?????? ???????????? ?????????.
			BreadVO vo2 = new BreadVO();
			vo2.setU_id(vo.getU_id());
			vo2 = Dao.selectStoreId(vo2);
			int d = Dao.dummyBread(vo2);
			System.out.println("??????" + d + "??? ??????");
			
		}
		
		return "redirect:memberInfoWaitPaging.do";
	}
	
	@RequestMapping("/memberLogOut.do")
	public String memberLogOut(HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.invalidate();
		
		return "redirect:home.do";
	}
	

	@RequestMapping("/memberSignup.do")
	public String memberSignup() {
		return "member/memberSignup";
	}
	
	@RequestMapping("/memberSignupSubmit.do")
	public String memberSignupSubmit(Model model, MemberVO vo, HttpServletRequest req) {
		
		int r = dao.insertMember(vo);
		
		
		System.out.println(r + "?????? ????????????");
		HttpSession session = req.getSession();
		session.setAttribute("id", vo.getU_id());
		model.addAttribute("member", vo);
		return "layout/main";
	}
	
	@RequestMapping("/ceoSignupSubmit.do")
	public String ceoSignupSubmit(Model model, MemberVO vo, HttpServletRequest req, HttpServletResponse resp) {
		int size = 10 * 1024 * 1024;
		String path = "C:\\tmp";
		path = "C:\\Users\\admin\\git\\202106MiniPrj\\MiniPrj\\src\\main\\webapp\\resources\\upload";
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
		String id = multi.getParameter("u_id");
		String pwd = multi.getParameter("u_pwd");
		String name = multi.getParameter("u_name");
		String tel = multi.getParameter("u_tel");
		String mail = multi.getParameter("u_mail");
		String adr = multi.getParameter("u_adr");
		String adrcode = multi.getParameter("u_adrcode");
		String rcode = multi.getParameter("r_code");
		
		vo.setU_id(id);
		vo.setU_pwd(pwd);
		vo.setU_name(name);
		vo.setU_tel(tel);
		vo.setU_mail(mail);
		vo.setU_adr(adr);
		vo.setU_adrcode(Integer.parseInt(adrcode));
		vo.setR_code(Integer.parseInt(rcode));
		vo.setS_file(fileName);
		int r = dao.insertCeo(vo);
		System.out.println(r + "??? ??????");
		HttpSession session = req.getSession();
		session.setAttribute("id", vo.getU_id());
		model.addAttribute("member", vo);
		return "redirect:home.do";
	}
	
	@RequestMapping("/memberIdCheck.do")
	public void memberIdCheck(MemberVO vo, HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String id = req.getParameter("id");
		vo.setU_id(id);
		int cnt = 0; 
		if(dao.memberIdCheck(vo) == 1) {
			cnt = 1;
		}
		resp.getWriter().print(cnt);
	}

	@RequestMapping("/memberNormalSignup.do")
	public String memberNormalSignup() {
		return "member/memberNormalSignup";
	}

	@RequestMapping("/memberCeoSignup.do")
	public String memberCeoSignup() {
		return "member/memberCeoSignup";
	}
	@RequestMapping("/memberUpdateInfo.do")
	public String memberUpdateInfo(Model model, MemberVO vo, HttpServletRequest req) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		String pwd = req.getParameter("u_pwd");
		String tel = req.getParameter("u_tel");
		String mail = req.getParameter("u_mail");
		String adr = req.getParameter("u_adr");
		String adrcode = req.getParameter("u_adrcode");
		
		vo.setU_id(id);
		vo.setU_pwd(pwd);
		vo.setU_tel(tel);
		vo.setU_mail(mail);
		vo.setU_adr(adr);
		vo.setU_adrcode(Integer.parseInt(adrcode));
		int r = dao.updateMember(vo);
		System.out.println(r + "??? ??????");
		
		BreadVO vo2 = new BreadVO();
		vo2.setS_adr(adr);
		vo2.setU_id(id);
		int t = Dao.storeAdrUpdate(vo2);
		System.out.println("?????? ?????? " + t + "??? ??????");
		
		model.addAttribute("member", dao.memberSelectJW(vo));
		return "member/memberMypage";
	}
	
	
	@RequestMapping("/memberMypage.do")
	public String mypage(Model model, MemberVO vo, HttpServletRequest req) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		vo.setU_id(id);
		
		model.addAttribute("member", dao.memberSelectJW(vo));
		return "member/memberMypage";
	}
	
	
	//?????????????????
	@RequestMapping("/memberMileage.do")
	public String memberMileage(Model model, MemberVO vo, HttpServletRequest req, revBoardVO2 revo, QnaVO qvo) {
		String id = req.getParameter("id");
		vo.setU_id(id);
		revo.setU_id(id);
		qvo.setU_id(id);
		
		model.addAttribute("qna", Qdao.qnaCount(qvo));
		model.addAttribute("review", Rdao.revBoardCount(revo));
		model.addAttribute("member", dao.memberSelectJW(vo));
		
		return "memberMileageAdPopup";

		//+1000?????????????????
	}
	@RequestMapping("/memberMileageUp.do")
	public String memberMileageUp(MemberVO vo, Model model){
		dao.mileAgeUp(vo);
		model.addAttribute("uid", vo.getU_id());
		return "member/mileage/memberMileageUpS";
	}
		//-1000?????????????????
	@RequestMapping("/memberMileageDown.do")
	public String memberMileageDown(MemberVO vo, Model model) {
		dao.mileAgeDown(vo);
		model.addAttribute("uid", vo.getU_id());
		return "member/mileage/memberMileageDownS";
	}
	
	// ???????????? ?????? +
	@RequestMapping("/mileAgeManualUp.do")
		public String mileAgeManualUp(MemberVO vo, Model model) {

			dao.mileAgeManualUp(vo);
			model.addAttribute("uid", vo.getU_id());
		return "member/mileage/manualUp";
		}
	// ???????????? ?????? -
		@RequestMapping("/mileAgeManualDown.do")
			public String mileAgeManualDown(MemberVO vo, Model model) {
			
				dao.mileAgeManualDown(vo);
				System.out.println(vo.getU_id());
				model.addAttribute("uid", vo.getU_id());
			return "member/mileage/manualDown";
			}
		// Paging ??????
		@RequestMapping("/memberInfoListPaging.do")
		public String memberInfoListPaging(Model model, MemberVO vo, HttpServletRequest req) {
			
			String page = req.getParameter("page");
			
				
			if (page == null) page = "1"; 
			
			int ipage = Integer.parseInt(page);
			
			vo.setFirstRecordIndex(1 + (ipage-1)*6);
			vo.setLastRecordIndex(6*ipage);
			vo.setTotalCnt(dao.tableCnt());
			
			Paging paging = new Paging();
			paging.setPageNo(ipage);
			paging.setPageSize(6);
			paging.setTotalCount(vo.getTotalCnt());
			
			
			
			model.addAttribute("members", dao.memberSelectList(vo));
			model.addAttribute("paging", paging);
			
			return "member/memberInfo";
		}
		
		@RequestMapping("/memberInfoWaitPaging.do")
		public String memberInfoWaitPaging(Model model, MemberVO vo, HttpServletRequest req) {
			
			String page = req.getParameter("page");
			
			
			if (page == null) page = "1"; 
			
			int ipage = Integer.parseInt(page);
			
			vo.setFirstRecordIndex(1 + (ipage-1)*6);
			vo.setLastRecordIndex(6*ipage);
			vo.setTotalCnt(dao.tableCntWait());
			
			Paging paging = new Paging();
			paging.setPageNo(ipage);
			paging.setPageSize(6);
			paging.setTotalCount(vo.getTotalCnt());
			
			
			model.addAttribute("members", dao.memberSelectListWait(vo));
			model.addAttribute("paging", paging);
			
			return "member/memberInfoWait";
		}
		
		@RequestMapping("/memberInfoBMPaging.do")
		public String memberInfoBMPaging(Model model, MemberVO vo, HttpServletRequest req) {
			
			String page = req.getParameter("page");
			
			
			if (page == null) page = "1"; 
			
			int ipage = Integer.parseInt(page);
			
			vo.setFirstRecordIndex(1 + (ipage-1)*6);
			vo.setLastRecordIndex(6*ipage);
			vo.setTotalCnt(dao.tableCntBM());
			
			Paging paging = new Paging();
			paging.setPageNo(ipage);
			paging.setPageSize(6);
			paging.setTotalCount(vo.getTotalCnt());
			
			
			model.addAttribute("members", dao.memberSelectListBM(vo));
			model.addAttribute("paging", paging);
			
			return "member/memberInfoBM";
		}
		
		@RequestMapping("/memberInfoMPaging.do")
		public String memberInfoMPaging(Model model, MemberVO vo, HttpServletRequest req) {
			
			String page = req.getParameter("page");
			
			
			if (page == null) page = "1"; 
			
			int ipage = Integer.parseInt(page);
			
			vo.setFirstRecordIndex(1 + (ipage-1)*6);
			vo.setLastRecordIndex(6*ipage);
			vo.setTotalCnt(dao.tableCntM());
			
			Paging paging = new Paging();
			paging.setPageNo(ipage);
			paging.setPageSize(6);
			paging.setTotalCount(vo.getTotalCnt());
			
			
			model.addAttribute("members", dao.memberSelectListM(vo));
			model.addAttribute("paging", paging);
			
			return "member/memberInfoM";
		}
		
}
