package co.yedam.prj.revBoard.web;





import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
			
			
			
				SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
				Date time = new Date();
				String time1 = format1.format(time);
				
				System.out.println(time1);
				
				String id = multi.getParameter("u_id");
				String content= multi.getParameter("rb_content");
				String title= multi.getParameter("rb_title");
				String rb_num=multi.getParameter("rb_num");
			
				
				vo.setU_id(id);
				vo.setRb_content(content);
				vo.setRb_title(title);
				vo.setRb_image(fileName);
				vo.setRb_regdate(time1);
				System.out.println(time1);
				
				int r=dao.insertRevBoard(vo);
				
				HttpSession session=req.getSession();
				session.setAttribute("image", vo.getRb_image());
				model.addAttribute("review",vo);
	
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
	public String reviewClick(Model model,revBoardVO2 vo) {

		model.addAttribute("Click", dao.revClickSelect(vo));
		dao.revBoardHit(vo);
		
		return "review/empty/reviewClick/reviewClick";
	}
    
	@RequestMapping("reviewHit.do")
	public String reviewHit() {
		return null;
	}
	
}
