package co.yedam.prj.notice.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.prj.common.Paging;
import co.yedam.prj.notice.service.NoticeService;
import co.yedam.prj.notice.vo.NoticeVO;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService dao;
	
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
	
	@RequestMapping("noticeForm.do")
	public String noticeForm(Model model) {
		
		return "notice/noticeForm";
		
	}
	
	@RequestMapping("/noticeInsert.do")
	public String noticeInsert(Model model, NoticeVO vo) {
		
		int r = dao.insertnotice(vo);
		System.out.println(r + "건 입력");
		
		return "redirect:noticeListPaging.do";
	}
}
