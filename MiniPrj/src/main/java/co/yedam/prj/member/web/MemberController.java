package co.yedam.prj.member.web;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartRequest;

import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
		System.out.println(r + "嫄� �엯�젰");
		HttpSession session = req.getSession();
		session.setAttribute("id", vo.getU_id());
		model.addAttribute("member", vo);
		return "layout/main";
	}
	
	@RequestMapping("/ceoSignupSubmit.do")
	public String ceoSignupSubmit(Model model, MemberVO vo, HttpServletRequest req, HttpServletResponse resp) {
		int size = 10 * 1024 * 1024;
		String path = "C:\\tmp";
						//  �뵆> request濡� �꽆�뼱�삤�땲源� �씠�젃寃�
		ServletContext sc = req.getServletContext();
		path = sc.getRealPath("upload"); // �꽌踰� �긽�쓽 寃쎈줈
		String fileName = "";

		com.oreilly.servlet.MultipartRequest multi = null;
		try {
			multi = new com.oreilly.servlet.MultipartRequest(req, path, size, "utf-8", new DefaultFileRenamePolicy());
			Enumeration files = multi.getFileNames();
			// item image媛� input type file濡� �꽆�뼱�삤湲� �븣臾몄뿉 �뿬湲곗꽌 �븿 泥섎━�빐以�.
			while (files.hasMoreElements()) {
				String itemImage = (String) files.nextElement();
				fileName = multi.getFilesystemName(itemImage);
				// fileName�뿉 itemImage媛믪씠 �뱾�뼱媛��엳�떎.
				System.out.println(itemImage+" fileName: " + fileName);
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		vo.setS_file(fileName);
		int r = dao.insertCeo(vo);
		System.out.println(r + "嫄� �엯�젰");
		HttpSession session = req.getSession();
		session.setAttribute("id", vo.getU_id());
		model.addAttribute("member", vo);
		return "layout/main";
	}
	
	@RequestMapping("/memberIdCheck.do")
	public void memberIdCheck(MemberVO vo, HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String id = req.getParameter("id");
		vo.setU_id(id);
		int cnt = 0; //議댁옱�븯吏��븡�쑝硫� 0 議댁옱�븯硫� 1�씠 由ы꽩
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
		
	
	
	//留덉씪由ъ�
	@RequestMapping("/memberMileage.do")
	public String memberMileage(Model model) {
		model.addAttribute("mileage", dao.memberSelectListM());
		return "member/mileage/memberMileage";

		//+1000留덉씪由ъ�
	}
	@RequestMapping("/memberMileageUp.do")
	public String memberMileageUp(MemberVO vo){
		dao.mileAgeUp(vo);
		return "member/mileage/memberMileageUpS";
	}
		//-1000留덉씪由ъ�
	@RequestMapping("/memberMileageDown.do")
	public String memberMileageDown(MemberVO vo) {
		dao.mileAgeDown(vo);
		return "member/mileage/memberMileageDownS";
	}
	
	// 마일리지 수동 +
	@RequestMapping("/mileAgeManualUp.do")
		public String mileAgeManualUp(MemberVO vo) {

			dao.mileAgeManualUp(vo);
			
		return "member/mileage/manualUp";
		}
	// 마일리지 수동 -
		@RequestMapping("/mileAgeManualDown.do")
			public String mileAgeManualDown(MemberVO vo) {
			
				dao.mileAgeManualDown(vo);
				
			return "member/mileage/manualDown";
			}
	
}
