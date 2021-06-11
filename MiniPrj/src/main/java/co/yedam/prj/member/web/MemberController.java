package co.yedam.prj.member.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.prj.member.serivce.MemberService;

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
		model.addAttribute("members", dao.memberSelectList());
		return "member/memberInfo";
	}
	@RequestMapping("/memberInfoBM.do")
	public String memberInfoBM(Model model) {
		model.addAttribute("members", dao.memberSelectList());
		return "member/memberInfo";
	}
	@RequestMapping("/memberInfoM.do")
	public String memberInfoM(Model model) {
		model.addAttribute("members", dao.memberSelectList());
		return "member/memberInfo";
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

	@RequestMapping("/memberSignup.do")
	public String memberSignup() {
		return "member/memberSignup";
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
