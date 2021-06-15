package co.yedam.prj.message.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.prj.common.Paging;
import co.yedam.prj.message.service.MessageService;
import co.yedam.prj.message.vo.MessageVO;
import co.yedam.prj.notice.vo.NoticeVO;


@Controller
public class MessageController {
	
	@Autowired
	private MessageService dao;
	
	// 전체리스트
	@RequestMapping("/message.do")
	public String Message(Model model, MessageVO vo, HttpSession session) {
		
		String receiver_name = (String) session.getAttribute("id");
		
		vo.setReceiver_name(receiver_name);
		List<MessageVO> list = dao.messageSelectList(vo);
		
		System.out.println(list);
		model.addAttribute("list" ,list);
		
		return "message/message";
	}
	
	// 받은메세지
	@RequestMapping("/messageReceiverList.do")
	public String MessageReceiver(Model model, MessageVO vo, HttpSession session) {
		
		String receiver_name = (String) session.getAttribute("id");
		
		vo.setReceiver_name(receiver_name);
		List<MessageVO> list = dao.messageSelectReceiver(vo);
		
		System.out.println(list);
		model.addAttribute("list" ,list);
		
		return "message/receiver";
	}
	
	// 보낸메세지
	@RequestMapping("/messageSelectSenderList.do")
	public String MessageSelectSenderList(Model model, MessageVO vo, HttpSession session) {
		
		String receiver_name = (String) session.getAttribute("id");
		
		vo.setReceiver_name(receiver_name);
		List<MessageVO> list = dao.messageSelectSenderList(vo);
		
		System.out.println(list);
		model.addAttribute("list" ,list);
		
		return "message/sender";
	}
	
	// 한건조회
	@RequestMapping("/messageSelect.do")
	public String messageSelect(Model model, HttpServletRequest request, MessageVO vo) {
		
		String ms_num = request.getParameter("ms_num");
		vo.setMs_num(Integer.parseInt(ms_num));
		
		MessageVO select = dao.messageSelect(vo);
		model.addAttribute("vo", select);
			
		return "message/form";
	}
	
	// 쪽지작성
	@RequestMapping("/messageInsert.do")
	private String messageInsert(Model model, MessageVO vo) {
		
		int r = dao.messageInsert(vo);
		System.out.println(r + "건 입력!");
		
		return "message/insert";
	}
	
	// 쪽지삭제
	@RequestMapping("/messageDelete.do")
	private String messageDelete(HttpServletRequest request, Model model, MessageVO vo) {

		String ms_num = request.getParameter("ms_num");
		vo.setMs_num(Integer.parseInt(ms_num));
		
		return "redirect:messageSelectSenderList.do";
	}
	
	
	// 받는쪽지 페이징
	@RequestMapping("/receiverPaging.do")
	public String receiverPaging(Model model, HttpServletRequest request, HttpSession session) {
		
		String page = request.getParameter("page");
		String receiver_name = (String) session.getAttribute("id");
		
		List<MessageVO> list = new ArrayList<>();
		List<MessageVO> total = new ArrayList<>();
		
		if (page == null) page = "1";
		
		int ipage = Integer.parseInt(page);
		
		MessageVO vo = new MessageVO();
		vo.setFirstRecordIndex(1 + (ipage-1)*10);
		vo.setLastRecordIndex(10*ipage);
		vo.setTotalCnt(dao.ReceiverCount());
		vo.setReceiver_name(receiver_name);
		
		list = dao.receiverPaging(vo);
		total = dao.messageSelectList(vo);
		
		Paging paging = new Paging();
		paging.setPageNo(ipage);
		paging.setPageSize(10);
		paging.setTotalCount(total.size());
		
		model.addAttribute("bolist", list);
		model.addAttribute("paging", paging);
		
		return "message/receiver";
	}

	
	// 보낸쪽지 페이징
	@RequestMapping("/senderPaging.do")
	public String senderPaging(Model model, HttpServletRequest request, HttpSession session) {
		
		String page = request.getParameter("page");
		String receiver_name = (String) session.getAttribute("id");
		
		List<MessageVO> list = new ArrayList<>();
		List<MessageVO> total = new ArrayList<>();
		
		if (page == null) page = "1";
		
		int ipage = Integer.parseInt(page);
		
		MessageVO vo = new MessageVO();
		vo.setFirstRecordIndex(1 + (ipage-1)*10);
		vo.setLastRecordIndex(10*ipage);
		vo.setTotalCnt(dao.SenderCount());
		vo.setReceiver_name(receiver_name);
		
		list = dao.senderPaging(vo);
		total = dao.messageSelectSenderList(vo);
		
		Paging paging = new Paging();
		paging.setPageNo(ipage);
		paging.setPageSize(10);
		paging.setTotalCount(total.size());
		
		model.addAttribute("bolist", list);
		model.addAttribute("paging", paging);
		
		return "message/sender";
	}
	
	
	
	
	
	
	
	
	
	
	
}
