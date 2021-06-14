package co.yedam.prj.notice.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.prj.common.Paging;
import co.yedam.prj.notice.service.NoticeService;
import co.yedam.prj.notice.vo.NoticeReplyVO;
import co.yedam.prj.notice.vo.NoticeVO;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService dao;
	
	// Paging 처리
	@RequestMapping("/noticeListPaging.do")
	public String noticeListpaging(Model model, HttpServletRequest request) {
		
		String page = request.getParameter("page");
		
		List<NoticeVO> list = new ArrayList<>();
		List<NoticeVO> total = new ArrayList<>();
		
		if (page == null) page = "1";
		
		int ipage = Integer.parseInt(page);
		
		NoticeVO vo = new NoticeVO();
		vo.setFirstRecordIndex(1 + (ipage-1)*10);
		vo.setLastRecordIndex(10*ipage);
		vo.setTotalCnt(dao.tableCount());
		
		list = dao.noticeSelectListPaging(vo);
		total = dao.noticeSelectList();
		
		Paging paging = new Paging();
		paging.setPageNo(ipage);
		paging.setPageSize(10);
		paging.setTotalCount(total.size());
		
		model.addAttribute("bolist", list);
		model.addAttribute("paging", paging);
		
		return "notice/noticeList";
	}
	
	// 공지사항 작성 페이지 이동
	@RequestMapping("noticeForm.do")
	public String noticeForm(Model model) {
		
		return "notice/noticeForm";
		
	}
	
	// 공지사항 작성
	@RequestMapping("/noticeInsert.do")
	public String noticeInsert(Model model, NoticeVO vo) {
		
		int r = dao.insertNotice(vo);
		System.out.println(r + "건 입력");
		
		return "redirect:noticeListPaging.do";
	}
	
	// 작성한 게시글 조회
	@RequestMapping("/noticeSelect.do")
	public String noticeSelect(Model model, HttpServletRequest request, NoticeVO vo1, NoticeReplyVO vo2) {
		
		// 작성한 게시글 조회
		String nt_num = request.getParameter("nt_num");
		String nt_hit = request.getParameter("nt_hit");
		String ntb_num = request.getParameter("nt_num");
		
		vo1.setNt_num(Integer.parseInt(nt_num));
		vo1.setNt_hit(Integer.parseInt(nt_hit));
		vo2.setNtb_num(Integer.parseInt(ntb_num));
		
		dao.hitcount(vo1);
		
		NoticeVO select = dao.noticeSelect(vo1);
		model.addAttribute("vo", select);
		
		// 작성한 게시글의 댓글 리스트
		
		List<NoticeReplyVO> replyList = dao.replyList(vo2);
		model.addAttribute("replyList", replyList);
		
		return "notice/noticeSelect";
	}
	
	// 게시글 삭제
	@RequestMapping("noticeDelete.do")
	public String noticeDelete(HttpServletRequest request, NoticeVO vo) {
		
		String nt_num = request.getParameter("nt_num");
		vo.setNt_num(Integer.parseInt(nt_num));
		
		dao.deleteNotice(vo);
		
		return "redirect:noticeListPaging.do";
	}
	
	// 게시글 수정
	@RequestMapping("noticeUpdate.do")
	public String noticeUpdate(HttpServletRequest request, NoticeVO vo) {
		
		String nt_num = request.getParameter("nt_num");
		String nt_title = request.getParameter("nt_title");
		String nt_content = request.getParameter("nt_content");
		
		vo.setNt_num(Integer.parseInt(nt_num));
		vo.setNt_title(nt_title);
		vo.setNt_content(nt_content);
		
		dao.updateNotice(vo);
		
		return "redirect:noticeListPaging.do";
	}
	
}
