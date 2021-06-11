package co.yedam.prj.member.web;

import javax.servlet.http.HttpServletRequest;
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
		
	
	
	//마일리지
	@RequestMapping("/memberMileage.do")
	public String memberMileage(Model model) {
		model.addAttribute("mileage", dao.memberSelectListM());
		return "member/mileage/memberMileage";

		//+1000마일리지
	}
	@RequestMapping("/memberMileageUp.do")
	public String memberMileageUp(MemberVO vo){
		dao.mileAgeUp(vo);
		return "member/mileage/memberMileageUpS";
	}
		//-1000마일리지
	@RequestMapping("/memberMileageDown.do")
	public String memberMileageDown(MemberVO vo) {
		dao.mileAgeDown(vo);
		return "member/mileage/memberMileageDownS";
	}
	
		//리뷰 작성시 자동지급 
	
		//댓글 작성시 자동지급
	
	//마일리지 수동 + 
	
	//마일리지 수동 -
}
