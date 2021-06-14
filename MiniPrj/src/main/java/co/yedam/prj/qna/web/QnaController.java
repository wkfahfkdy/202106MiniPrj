package co.yedam.prj.qna.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.prj.common.Paging;
import co.yedam.prj.notice.vo.NoticeVO;
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
	
	// 작성한 게시글 조회
	@RequestMapping("/qnaSelect.do")
	public String qnaSelect(Model model, HttpServletRequest request, QnaVO vo) {
		
		String qn_num = request.getParameter("qn_num");
		String qn_hit = request.getParameter("qn_hit");
		
		vo.setQn_num(Integer.parseInt(qn_num));
		vo.setQn_hit(Integer.parseInt(qn_hit));
		
		dao.hitCount(vo);
		
		QnaVO select = dao.qnaSelect(vo);
		
		System.out.println(select);
		model.addAttribute("vo", select);
		
		return "qna/qnaSelect";
	}
	
	// 게시글 삭제
	@RequestMapping("/qnaDelete.do")
	public String qnaDelete(HttpServletRequest request, QnaVO vo) {
		
		String qn_num = request.getParameter("qn_num");
		vo.setQn_num(Integer.parseInt(qn_num));
		
		dao.deleteQna(vo);
		
		return "redirect:qnaListPaging.do";
	}
	
	// 게시글 수정
	@RequestMapping("qnaUpdate.do")
	public String qnaUpdate(HttpServletRequest request, QnaVO vo) {
		
		String qn_num = request.getParameter("qn_num");
		String qn_title = request.getParameter("qn_title");
		String qn_content = request.getParameter("qn_content");
		
		vo.setQn_num(Integer.parseInt(qn_num));
		vo.setQn_title(qn_title);
		vo.setQn_content(qn_content);
		
		dao.updateQna(vo);
		
		return "redirect:qnaListPaging.do";
	}
}
