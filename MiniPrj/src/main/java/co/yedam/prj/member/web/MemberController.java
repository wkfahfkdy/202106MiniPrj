package co.yedam.prj.member.web;

<<<<<<< HEAD
import javax.servlet.http.HttpServletRequest;
=======
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
>>>>>>> branch 'master' of https://github.com/wkfahfkdy/202106MiniPrj.git
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
		System.out.println(r + "건 입력");
		HttpSession session = req.getSession();
		session.setAttribute("id", vo.getU_id());
		model.addAttribute("member", vo);
		return "layout/main";
	}
	
	@RequestMapping("/ceoSignupSubmit.do")
	public String ceoSignupSubmit(Model model, MemberVO vo, HttpServletRequest req, HttpServletResponse resp) {
//		int size = 10 * 1024 * 1024;
//		String path = "c:/tmp";
//						//  ┌> request로 넘어오니까 이렇게
//		ServletContext sc = req.getServletContext();
//		path = sc.getRealPath("upload"); // 서버 상의 경로
//		String fileName = "";
//
//		MultipartRequest multi = null;
//		try {
//			multi = new MultipartRequest(req, path, size, "utf-8", new DefaultFileRenamePolicy());
//			Enumeration files = multi.getFileNames();
//			// item image가 input type file로 넘어오기 때문에 여기서 함 처리해줌.
//			while (files.hasMoreElements()) {
//				String itemImage = (String) files.nextElement();
//				fileName = multi.getFilesystemName(itemImage);
//				// fileName에 itemImage값이 들어가있다.
//				System.out.println(itemImage+" fileName: " + fileName);
//			}
//
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
		
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
