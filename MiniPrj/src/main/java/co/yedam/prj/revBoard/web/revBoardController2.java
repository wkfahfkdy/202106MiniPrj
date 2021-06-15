package co.yedam.prj.revBoard.web;





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

import co.yedam.prj.revBoard.service.revBoardService2;
import co.yedam.prj.revBoard.vo.revBoardVO2;

@Controller
public class revBoardController2 {
	
	@Autowired
	private revBoardService2 dao;
	
	@RequestMapping("/review2.do")
	public String revBoardList(Model model) {
		
		model.addAttribute("list", dao.revBoardSelectList());
		
		return "review/review";
	}
	
	
	//리뷰 등록페이지
	
	@RequestMapping("/revBoardEnrollment.do")
	public String revBoardEnrollment(Model model) {
		
		model.addAttribute("list",dao.revBoardSelectList());
		
		return "review/revBoardEnrollment";
	}
	
	
	// 리뷰 이미지 저장경로 및 vo 값 저장
	@RequestMapping("/revBoardSubmit.do")
	public String revBoardSubmit(revBoardVO2 vo,Model model, HttpServletRequest req, HttpServletResponse resp) {
			int size = 10 * 1024 * 1024;
			String path = "C:\\tmp";
			path = "C:\\Users\\admin\\git\\202106MiniPrj\\MiniPrj\\src\\main\\webapp\\resources\\reviewUpload";
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
				String id = multi.getParameter("u_id");
				String content= multi.getParameter("rb_content");
				String title= multi.getParameter("rb_title");
				
				vo.setU_id(id);
				vo.setRb_content(content);
				vo.setRb_title(title);
				vo.setRb_image(fileName);
				
		
				int r=dao.insertRevBoard(vo);
				System.out.println(r+"건 입력");
				HttpSession session=req.getSession();
				session.setAttribute("image", vo.getRb_image());
				model.addAttribute("review",vo);
	
		return "redirect:review2.do";
	}
	
	
	// X   리뷰클릭시 나오는 화면
	@RequestMapping("/red1.do")
	public String red1(Model model) {
		
		model.addAttribute("list",dao.revBoardSelectList());
		
		return "review/reviewDetail2";
	}
	
	
	//좋아요 클릭시
	@RequestMapping("reviewLike.do")
	public String reviewLike(revBoardVO2 vo) {
		
		
		dao.reviewLike(vo);
		return "redirect:review2.do";
	}
	
}
