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

	@RequestMapping("/memberInfo.do")
	public String memberInfo(Model model) {
		model.addAttribute("members", dao.memberSelectList());

		return "member/memberInfo";
	}

	@RequestMapping("/memberLogin.do")
	public String memberLogin() {
		return "member/memberLogin";
	}
	
}
