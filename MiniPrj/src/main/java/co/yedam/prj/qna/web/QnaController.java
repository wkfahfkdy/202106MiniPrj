package co.yedam.prj.qna.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.prj.common.Paging;
import co.yedam.prj.qna.service.QnaService;
import co.yedam.prj.qna.vo.QnaVO;

@Controller
public class QnaController {

	@Autowired
	private QnaService dao;
	
	// Paging 처리
	@RequestMapping("/qnaListPaging.do")
	public String qnaListPaging(Model model, HttpServletRequest request) {
		
		String page = request.getParameter("page");
		
		List<QnaVO> list = new ArrayList<>();
		List<QnaVO> total = new ArrayList<>();
		
		if (page == null) page = "1";
		
		int ipage = Integer.parseInt(page);
		
		QnaVO vo = new QnaVO();
		vo.setFirstRecordIndex(1 + (ipage-1)*10);
		vo.setLastRecordIndex(10*ipage);
		vo.setTotalCnt(dao.tableCnt());
		
		list = dao.qnaSelectListPaging(vo);
		total = dao.qnaSelectList();
		
		Paging paging = new Paging();
		paging.setPageNo(ipage);
		paging.setPageSize(10);
		paging.setTotalCount(total.size());
		
		model.addAttribute("bolist", list);
		model.addAttribute("paging", paging);
		
		System.out.println(list);
		
		return "qna/qnaList";
	}
	
	// Qna 게시글 작성 페이지 이동
	@RequestMapping("qnaForm.do")
	public String noticeForm(Model model) {
		
		return "qna/qnaForm";
		
	}
	
	// Qna 게시글 작성
	@RequestMapping("/qnaInsert.do")
	public String noticeInsert(Model model, QnaVO vo) {
		
		int r = dao.insertQna(vo);
		System.out.println(r + "건 입력");
		
		return "redirect:qnaListPaging.do";
	}
}
