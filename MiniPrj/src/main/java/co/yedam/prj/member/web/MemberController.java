package co.yedam.prj.member.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.prj.member.serivce.MemberService;
import co.yedam.prj.member.vo.MemberVO;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService dao;
	
	@RequestMapping("/memberList.do")
	public String member(Model model) {
		
		model.addAttribute("members", dao.memberSelectList());
		
		return "member/test";
	}

	@RequestMapping("/memberInfoWait.do")
	public String memberInfoWait(Model model) {
		model.addAttribute("members", dao.memberSelectListWait());
		return "member/memberInfoWait";
	}
	@RequestMapping("/memberInfoBM.do")
	public String memberInfoBM(Model model) {
		model.addAttribute("members", dao.memberSelectListBM());
		return "member/memberInfoBM";
	}
	@RequestMapping("/memberInfoM.do")
	public String memberInfoM(Model model) {
		model.addAttribute("members", dao.memberSelectListM());
		return "member/memberInfoM";
	}
	@RequestMapping("/memberInfo.do")
	public String memberInfo(Model model) {
		model.addAttribute("members", dao.memberSelectList());
		return "member/memberInfo";
	}
	@RequestMapping("/businessMemberPage.do")
	public String businessMemberPage(Model model) {
		
		return "member/businessMemberPage";
	}

	@RequestMapping("/memberLogin.do")
	public String memberLogin() {
		return "member/memberLogin";
	}
	
	@RequestMapping("/memberLoginB.do")
	public String memberLoginB(Model model, MemberVO vo, HttpServletRequest req) {
		String path = "";
		if(dao.memberSelect(vo) != 0) {
			HttpSession session = req.getSession();
			session.setAttribute("id", vo.getU_id());
			path = "layout/main";
		}else {
			path = "member/memberLoginFail";
		};
		
		return path;
	}
	
	@RequestMapping("/memberLogOut.do")
	public String memberLogOut(HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.invalidate();
		
		return "layout/main";
	}
	

	@RequestMapping("/memberSignup.do")
	public String memberSignup() {
		return "member/memberSignup";
	}
	
	@RequestMapping("/memberSignupSubmit.do")
	public String memberSignupSubmit(Model model, MemberVO vo, HttpServletRequest req) {
		
		int r = dao.insertMember(vo);
		System.out.println(r + "건 입력");
		HttpSession session = req.getSession();
		session.setAttribute("id", vo.getU_id());
		model.addAttribute("member", vo);
		return "layout/main";
	}
	
	@RequestMapping("/ceoSignupSubmit.do")
	public String ceoSignupSubmit(Model model, MemberVO vo, HttpServletRequest req) {
		
		int r = dao.insertCeo(vo);
		System.out.println(r + "건 입력");
		HttpSession session = req.getSession();
		session.setAttribute("id", vo.getU_id());
		model.addAttribute("member", vo);
		return "layout/main";
	}
	
	@RequestMapping("/memberIdCheck.do")
	public void memberIdCheck(MemberVO vo, HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String id = req.getParameter("id");
		vo.setU_id(id);
		int cnt = 0; //존재하지않으면 0 존재하면 1이 리턴
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

	
	
	@RequestMapping("/memberMypage.do")
	public String mypage() {
		return "member/memberMypage";
	}
	@RequestMapping("/memberAdPopup.do")
	public String adpopup() {
		return "member/memberAdPopup";
	}
	
}
