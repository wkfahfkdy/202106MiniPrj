package co.yedam.prj.qna.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.prj.common.Paging;
import co.yedam.prj.notice.vo.NoticeReplyVO;
import co.yedam.prj.qna.service.QnaService;
import co.yedam.prj.qna.vo.QnaReplyVO;
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
	public String qnaSelect(Model model, HttpServletRequest request, QnaVO vo, QnaReplyVO vo2) {
		
		String qn_num = request.getParameter("qn_num");
		String qn_hit = request.getParameter("qn_hit");
		String qnb_num = request.getParameter("qn_num");
		
		vo.setQn_num(Integer.parseInt(qn_num));
		vo.setQn_hit(Integer.parseInt(qn_hit));
		vo2.setQnb_num(Integer.parseInt(qnb_num));
		
		// 선택한 글을 들어갈 시 조회수 +1
		dao.hitCount(vo);
		
		QnaVO select = dao.qnaSelect(vo);
		
		model.addAttribute("vo", select);
		
		// 작성한 게시글의 댓글 리스트
		List<QnaReplyVO> replyList = dao.replyList(vo2);
		model.addAttribute("replyList", replyList);
		
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
	@RequestMapping("/qnaUpdate.do")
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
	
	// 댓글 작성
	@RequestMapping("/qnAddComment.do")
	public String addComment(HttpServletRequest request, QnaReplyVO vo) {
		
		// 댓글(want : new) - 대댓글(want : add) 구별을 위한 값
		String want = request.getParameter("want");
		
		String u_id = request.getParameter("u_id");
		String qnr_content = request.getParameter("qnr_content");
		int qnb_num = Integer.parseInt(request.getParameter("qnb_num"));
		
		vo.setU_id(u_id);
		vo.setQnr_content(qnr_content);
		vo.setQnb_num(qnb_num);
		
		// want : new = 댓글이라면
		if(want.equals("new")) {
			
			dao.insertQnaReply(vo);
		
		// want : add = 대댓글이라면
		} else if(want.equals("add")) {
			
			int qnr_depth = Integer.parseInt(request.getParameter("qnr_depth"));
			int qnr_num = Integer.parseInt(request.getParameter("qnr_num"));
			
			vo.setQnr_depth(qnr_depth);
			vo.setQnr_num(qnr_num);
			
			dao.insertQnaReplyAdd(vo);
			
		}
		
		return "redirect:qnaListPaging.do";
	}
}
