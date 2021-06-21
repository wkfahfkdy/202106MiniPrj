package co.yedam.prj.revBoard.web;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;
import com.google.gson.JsonObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import co.yedam.prj.common.Paging;
import co.yedam.prj.revBoard.service.revBoardService;
import co.yedam.prj.revBoard.vo.revBoardVO;

@Controller
public class revBoardController {
	
	@Autowired
	private revBoardService dao;
	
	@RequestMapping("/revBoardList.do")
	public String revBoardList(Model model) {
		
		model.addAttribute("list", dao.revBoardSelectList());
		
		return "";
	}
	
	@RequestMapping("/revBoardListPaging.do")
	public String revBoardListPaging(Model model, HttpServletRequest request) {
		
		String page = request.getParameter("page");
		
		List<revBoardVO> list = new ArrayList<>();
		List<revBoardVO> total = new ArrayList<>();
		
		if (page == null) page = "1";
		
		int ipage = Integer.parseInt(page);
		 
		revBoardVO vo = new revBoardVO();
		vo.setFirstRecordIndex(1 + (ipage-1)*10);
		vo.setLastRecordIndex(10*ipage);
		vo.setTotalCnt(dao.tableCount());
		
		list = dao.revBoardSelectListPaging(vo);
		total = dao.revBoardSelectList();
		
		Paging paging = new Paging();
		paging.setPageNo(ipage);
		paging.setPageSize(10);
		paging.setTotalCount(total.size());
		
		model.addAttribute("bolist", list);
		model.addAttribute("paging", paging);
		
		return "revBoard/revBoardList";
	}
	
	@RequestMapping("/revBoardList_dio.do")
	public String revBoardList_dio(Model model, revBoardVO vo,@RequestParam(value = "page", required = false, defaultValue="1") int page) {
		
		vo.setFirstRecordIndex(1 + (page-1)*10);
		vo.setLastRecordIndex(10*page);
		vo.setTotalCnt(dao.tableCount());
		
		
		
//		System.out.println(vo.getFirstRecordIndex());
//		System.out.println(vo.getLastRecordIndex());
		
		model.addAttribute("bolist",dao.revBoardSelectListPaging(vo));
		
		
		return "revBoard/revBoardList_dio";
	}
	
	@RequestMapping("/revBoardForm.do")
	public String revBoardForm(Model model) {
		
		return "revBoard/revBoardForm";
	}
	
	@RequestMapping("/revBoardInsert.do")
	public String revBoardInsert(Model model, revBoardVO vo) {
		
		int r = dao.insertRevBoard(vo);
		System.out.println(r + "건 입력");
		
		return "redirect:revBoardListPaging.do";
	}
	
	@RequestMapping("imageUpload.do")
	public void imageUpload(HttpServletRequest req, HttpServletResponse resp, @RequestParam MultipartFile upload)
	throws ServletException, IOException{
		 resp.setCharacterEncoding("UTF-8");
	      String path = "c:/tmp";
	      ServletContext sc = req.getServletContext();
	      path = "C:\\Users\\admin\\git\\202106MiniPrj\\MiniPrj\\src\\main\\webapp\\resources\\upload";
	      MultipartRequest multi = new MultipartRequest(req,path ,8*1024*1024,"UTF-8",new DefaultFileRenamePolicy());
	      Enumeration en = multi.getFileNames();
	      String fileName = null;
	      while(en.hasMoreElements()) {
	         String name = (String) en.nextElement();
	         fileName = multi.getFilesystemName(name);
	      }
	      JsonObject json = new JsonObject();
	      json.addProperty("uploaded", 1);
	      json.addProperty("fileName", fileName);
	      json.addProperty("url", req.getContextPath() + "/resources/upload/" + fileName);
	      resp.getWriter().print(json);

	}
	
}
