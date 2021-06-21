package co.yedam.prj.revBoard.web;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
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
public class fileUploadController {
	
	@Autowired
	private revBoardService2 dao;
	
	@RequestMapping("/imgDiv1.do")
	public String revBoardSubmit1(revBoardVO2 vo,Model model, HttpServletRequest req, HttpServletResponse resp) throws UnsupportedEncodingException {
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
			
				req.setCharacterEncoding("UTF-8");
				int rb_num= Integer.parseInt(multi.getParameter("rb_num"));
				System.out.println(fileName);
				vo.setRb_num(rb_num);
				vo.setRb_image1(fileName);
				
				dao.imageUpload1(vo);
				
	
		return "redirect:reviewClick.do?rb_num=" + vo.getRb_num();
	}
	
	@RequestMapping("/imgDiv2.do")
	public String revBoardSubmit2(revBoardVO2 vo,Model model, HttpServletRequest req, HttpServletResponse resp) throws UnsupportedEncodingException {
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
			
				req.setCharacterEncoding("UTF-8");
				int rb_num= Integer.parseInt(multi.getParameter("rb_num"));
				System.out.println(fileName);
				vo.setRb_num(rb_num);
				vo.setRb_image2(fileName);
				
				dao.imageUpload2(vo);
				
	
		return "redirect:reviewClick.do?rb_num=" + vo.getRb_num();
	}
	
	@RequestMapping("/imgDiv3.do")
	public String revBoardSubmit3(revBoardVO2 vo,Model model, HttpServletRequest req, HttpServletResponse resp) throws UnsupportedEncodingException {
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
			
				req.setCharacterEncoding("UTF-8");
				int rb_num= Integer.parseInt(multi.getParameter("rb_num"));
				System.out.println(fileName);
				vo.setRb_num(rb_num);
				vo.setRb_image3(fileName);
				
				dao.imageUpload3(vo);
				
	
		return "redirect:reviewClick.do?rb_num=" + vo.getRb_num();
	}
	
	@RequestMapping("/imgDiv4.do")
	public String revBoardSubmit4(revBoardVO2 vo,Model model, HttpServletRequest req, HttpServletResponse resp) throws UnsupportedEncodingException {
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
			
				req.setCharacterEncoding("UTF-8");
				int rb_num= Integer.parseInt(multi.getParameter("rb_num"));
				System.out.println(fileName);
				vo.setRb_num(rb_num);
				vo.setRb_image4(fileName);
				
				dao.imageUpload4(vo);
				
	
		return "redirect:reviewClick.do?rb_num=" + vo.getRb_num();
	}
	
	
}
