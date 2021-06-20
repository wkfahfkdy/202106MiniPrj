package co.yedam.prj.revBoard.web;



import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.prj.member.serivce.MemberService;
import co.yedam.prj.member.vo.MemberVO;
import co.yedam.prj.revBoard.service.revBoardService2;
import co.yedam.prj.revBoard.vo.RevCommentVO;
import co.yedam.prj.revBoard.vo.revBoardVO2;

@Controller
public class revBoardController2 {
	
	@Autowired
	private revBoardService2 dao;
	
	@Autowired
	private MemberService Mdao;
	
	@RequestMapping("/review2.do")
	public String revBoardList(Model model,RevCommentVO vo) {
		
		//model.addAttribute("count",dao.reviewCount(vo));
		model.addAttribute("list", dao.revBoardSelectList());
		model.addAttribute("top",dao.reviewLikeTop());
		
		return "review/review";
	}
	
	
	//由щ럭 �벑濡앺럹�씠吏�
	
	@RequestMapping("/revBoardEnrollment.do")
	public String revBoardEnrollment(Model model) {
		
		model.addAttribute("list",dao.revBoardSelectList());
		
		return "review/revBoardEnrollment";
	}
	
	
	// 由щ럭 �씠誘몄� ���옣寃쎈줈 諛� vo 媛� ���옣
	@RequestMapping("/revBoardSubmit.do")
	public String revBoardSubmit(revBoardVO2 vo,Model model, HttpServletRequest req, HttpServletResponse resp, MemberVO mvo) {
			int size = 10 * 1024 * 1024;
			String path = "C:\\tmp";
			path = "C:\\Users\\User\\git\\202106MiniPrj\\MiniPrj\\src\\main\\webapp\\resources\\reviewUpload";
			MultipartRequest multi = null;
			String fileName="";
			try {
				multi = new MultipartRequest(req,path,  size, "utf-8", new DefaultFileRenamePolicy());
				Enumeration files = multi.getFileNames();
				while (files.hasMoreElements()) {
					String itemImage = (String) files.nextElement();
					 fileName = multi.getFilesystemName(itemImage);
				}

			} catch (IOException e) {
				e.printStackTrace();
			}
			
				SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
				Date time = new Date();
				String time1 = format1.format(time);
				
				System.out.println(time1);
				
				String id = multi.getParameter("u_id");
				String content= multi.getParameter("rb_content");
				String title= multi.getParameter("rb_title");
				
				vo.setU_id(id);
				vo.setRb_content(content);
				vo.setRb_title(title);
				vo.setRb_image(fileName);
				vo.setRb_regdate(time1);
				
				int k = dao.revCount(vo);
				
				if(k >= 2) {
					int r = dao.insertRevBoard(vo);
					System.out.println(r + "건 입력1");
				
					HttpSession session=req.getSession();
					session.setAttribute("image", vo.getRb_image());
					model.addAttribute("review",vo);
				}else {
					int r = dao.insertRevBoard(vo);
					System.out.println(r + "건 입력1");
					
					mvo.setU_id(id);
					int i = Mdao.revMileageUp(mvo);
					System.out.println(i + "건 입력2");
					
					HttpSession session=req.getSession();
					session.setAttribute("image", vo.getRb_image());
					model.addAttribute("review",vo);
				}
				
				
		return "redirect:review2.do";
	}
	
	
	// X   由щ럭�겢由��떆 �굹�삤�뒗 �솕硫�
	@RequestMapping("/red1.do")
	public String red1(Model model) {
		
		model.addAttribute("list",dao.revBoardSelectList());
		
		return "review/reviewDetail2";
	}
	
	
	//醫뗭븘�슂 �겢由��떆
	@RequestMapping("reviewLike.do")
	public String reviewLike(revBoardVO2 vo) {
		
		dao.reviewLike(vo);
		return "redirect:review2.do";
	}
	
	@RequestMapping("reviewClick.do")
	public String reviewClick(Model model,revBoardVO2 vo,HttpServletRequest req,RevCommentVO vo2){
		dao.revBoardHit(vo);
		
		
		List<RevCommentVO> list = new ArrayList<RevCommentVO>();
		list=dao.revCommentList(vo2);
		
		for (RevCommentVO revCommentVO : list) {
		System.out.println(revCommentVO.getC_comment());
		System.out.println(revCommentVO.getU_id());
		}
		
		System.out.println(vo.getRb_image());
		System.out.println(vo.getRb_image2());
		
		model.addAttribute("count", dao.reviewCount(vo2));
		model.addAttribute("Click", dao.revClickSelect(vo));
		model.addAttribute("list",list);
		return "review/empty/reviewClick/reviewClick";
	}
    
	@RequestMapping("reviewHit.do")
	public String reviewHit() {
		return null;
	}
	
	
	@RequestMapping("commentInsert.do")
	public String commentInsert(revBoardVO2 vo2,RevCommentVO vo,MemberVO vo3) {
		SimpleDateFormat format1 = new SimpleDateFormat ( "yy.MM.dd HH:mm:ss");
		Date time = new Date();
		String time1 = format1.format(time);
		vo.setC_date(time1);
		/*String id=req.getParameter("u_id");
		String comment=req.getParameter("c_comment");
		
		
		vo.setC_comment(comment);
		vo.setU_id(id);
		System.out.println(time1);
		System.out.println(comment);
		System.out.println(id);*/
		System.out.println(vo.getC_comment());
		System.out.println(vo.getU_id());
		System.out.println(vo.getC_date());
		System.out.println(vo.getRb_num());
		
		
		dao.insertRevComment(vo);
		dao.commentMileage(vo3);
		
		return "redirect:reviewClick.do?rb_num=" + vo.getRb_num();
	
	}
	
	@RequestMapping("deleteReview.do")
	public String deleteReview(revBoardVO2 vo) {
		
		dao.deleteReview(vo);
		return "review/empty/deleteReview";
	}
	
	@RequestMapping("updateReview.do")
	public String updateReview(revBoardVO2 vo) {
		dao.UpdateReview(vo);
		
		return "redirect:reviewClick.do?rb_num=" + vo.getRb_num();
	}
	
	
	@RequestMapping("/imageDel1.do")
	public String imageDel1(revBoardVO2 vo) {
		dao.imageDel1(vo);
		return "redirect:reviewClick.do?rb_num=" + vo.getRb_num();
	}
	
	@RequestMapping("/imageDel2.do")
	public String imageDel2(revBoardVO2 vo) {
		dao.imageDel2(vo);
		return "redirect:reviewClick.do?rb_num=" + vo.getRb_num();
	}
	
	@RequestMapping("/imageDel3.do")
	public String imageDel3(revBoardVO2 vo) {
		dao.imageDel3(vo);
		return "redirect:reviewClick.do?rb_num=" + vo.getRb_num();
	}
	
	@RequestMapping("/imageDel4.do")
	public String imageDel4(revBoardVO2 vo) {
		dao.imageDel4(vo);
		return "redirect:reviewClick.do?rb_num=" + vo.getRb_num();
	}
	
	@RequestMapping("/test.do")
	public String test() {
		return "review/empty/reviewClick/empty123";
	}
	
	@RequestMapping("/reviewLikeUp.do")
	public String reviewLikeUp(revBoardVO2 vo) {
		
		dao.reviewLikeUp(vo);
		return "redirect:reviewClick.do?rb_num=" + vo.getRb_num();
	}
}
