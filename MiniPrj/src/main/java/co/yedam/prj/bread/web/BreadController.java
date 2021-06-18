package co.yedam.prj.bread.web;


import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.prj.bread.service.BreadService;
import co.yedam.prj.bread.vo.BreadVO;


@Controller
public class BreadController {

	@Autowired
	private BreadService dao;


	//빵 자세히 보기 
	@RequestMapping("/breadView.do")
	public String breadView(Model model, BreadVO vo, HttpSession session) {
		String u_id = (String) session.getAttribute("id");
		vo.setU_id(u_id);
		
		BreadVO vo2 = new BreadVO(); 
		vo2 = dao.selectStoreId(vo);
		
		vo.setS_id(vo2.getS_id());
		System.out.println(vo.getS_id());
		
		
		List<BreadVO> list = dao.breadSelectList(vo);
		model.addAttribute("bread", list);
		
		return "breadView";
	}
	
	@RequestMapping("/storeInform.do")
	public String storeInform(BreadVO vo, HttpServletRequest req, HttpSession session) {
		
		String s_tel = req.getParameter("s_tel");
		String s_content = req.getParameter("s_content");
		String s_name = req.getParameter("s_name");
		String u_id = (String) session.getAttribute("id");
		vo.setU_id(u_id);
		
		String s_tel2 = req.getParameter("s_tel2");
		String s_content2 = req.getParameter("s_content2");
		String s_name2 = req.getParameter("s_name2");
		
		if(s_tel.equals("")) {
			vo.setS_tel(s_tel2);
		} 
		if (s_content.equals("") ) {
			vo.setS_content(s_content2);
		} 
		if (s_name.equals("")) {
			vo.setS_name(s_name2);
		}
		
		dao.storeInform(vo);
		
		return "redirect:breadStoreManage.do";
	}
	
	//My shop Manage => INFORM 수정 부분
	@RequestMapping("/breadStoreManage.do")
	public String breadStoreManage(Model model, BreadVO vo, HttpSession session) {
		
		String u_id = (String) session.getAttribute("id");
		vo.setU_id(u_id);
		
		BreadVO vo2 = new BreadVO(); 
		vo2 = dao.selectStoreId(vo);
		
		vo.setS_id(vo2.getS_id());
		
		BreadVO vo3 = dao.storeAdr(vo);
		model.addAttribute("loc", vo3.getS_adr());
		
		
		BreadVO vo4 = dao.storeSelectMP(vo);
		String testName = vo4.getS_name();
		if (testName == null) {
			testName = "0";
		} else {
			testName = "1";
		}
		model.addAttribute("bread",vo4);
		
		List<BreadVO> list = dao.storeSelectList(vo);
		model.addAttribute("store", list);
		model.addAttribute("testName", testName);
		
		return "breadStoreManage";
	}
	
	
	
	
	//코드 순서는 BreadService 나열 순으로 정리 되어 있습니다.
	
	
	//빵 리스트 출력 
	@RequestMapping("/bread.do")	
	public String breadSelectList(Model model,BreadVO vo) {
		model.addAttribute("RCode",dao.storeRCode());
		model.addAttribute("topThree", dao.storeTopThree());
		model.addAttribute("bread", dao.breadSelectList(vo));
		
		return "bread/bread";
	}
	
	
	
//	
//	@RequestMapping("/test.do")
//	public String test(Model model, BreadVO vo) {
//		
//		vo = dao.testAdr();
//		String testAdr = vo.getS_adr();
//		
//		model.addAttribute("testAdr", testAdr);
//		
//		return "bread/breadStore";
//	}
//	
	//빵 리스트 페이징 
//	@RequestMapping("/breadpaging.do")	//페이징 처리 해야하나 말아야하나?
//	public String breadSelectListPaging(Model model,BreadVO vo) {
//		model.addAttribute("bread", dao.breadSelectListPaging(vo));
//		return "bread/breadpaging";
//	}
	
	
	// 빵 랭크 리스트
//	@RequestMapping("/breadRankList.do")	
//	public String breadRankList(Model model,BreadVO vo) {
//		model.addAttribute("bread", dao.breadRankList(vo));
//		return "bread/breadRankList";
//	}
//	
//	
	
	// 빵 추가 
//	@RequestMapping("/breadInsert.do")	
//	public String breadInsert(Model model,BreadVO vo) {
//		model.addAttribute("bread", dao.breadInsert(vo));
//		return "bread/breadInsert";
//	}
//	
//	
//	// 빵 삭제
	@RequestMapping("/breadDeleteMenu.do")	
	public String breadDelete(Model model,BreadVO vo, HttpServletRequest req) {
		String b_id = req.getParameter("b_id");
		vo.setB_id(b_id);
		System.out.println("ㅁㄴㅇㄹ : " + b_id);
		int r = dao.breadDeleteMenu(vo);
		System.out.println(r + "건 삭제");
		
		
		return "redirect:breadStoreManage.do";
	}
	
	
	//빵 입력 페이지 이동
	@RequestMapping("/breadInsertMenu.do")
	public String breadInsertMenu() {
		
		return "breadInsertMenu";
	}
	
	//빵 메뉴 추가하기 (완성)
	@RequestMapping("/breadInsertMenuSubmit.do")
	public String breadInsertMenu(Model model,HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		
		int size = 10 * 1024 * 1024; //585*468
		String path = "C:\\tmp";
		path = "C:\\Users\\admin\\git\\202106MiniPrj\\MiniPrj\\src\\main\\webapp\\resources\\productUpload";
		String fileName = "";
		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(req, path, size, "utf-8", new DefaultFileRenamePolicy());
			Enumeration files = multi.getFileNames();
			while (files.hasMoreElements()) {
				String itemImage = (String) files.nextElement();
				fileName = multi.getFilesystemName(itemImage);
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String u_id = (String) session.getAttribute("id");
		
		BreadVO vo = new BreadVO();
		vo.setU_id(u_id);
		vo.setB_comment(multi.getParameter("b_comment"));
		vo.setB_name(multi.getParameter("b_name"));
		vo.setB_price(multi.getParameter("b_price"));
		vo.setB_qty(multi.getParameter("b_qty"));
		
		BreadVO vo2 = new BreadVO();
		vo2.setU_id(u_id);
		vo2 = dao.selectStoreId(vo2);
		
		vo.setS_id(vo2.getS_id()); 		
		vo.setB_image(fileName);
		
		dao.breadinsertMenu(vo);

		return "redirect:breadStoreManage.do";
	}
	
	
	
	
	
	
	
	// 스토어 메인 image 추가하기 (완)
	@RequestMapping("/sImageUpload.do")
	public String sImageUpload(Model model,HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		
		int size = 10 * 1024 * 1024; //585*468
		String path = "C:\\tmp";
		path = "C:\\Users\\admin\\git\\202106MiniPrj\\MiniPrj\\src\\main\\webapp\\resources\\storeMainUpload";
		String fileName = "";
		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(req, path, size, "utf-8", new DefaultFileRenamePolicy());
			Enumeration files = multi.getFileNames();
			while (files.hasMoreElements()) {
				String itemImage = (String) files.nextElement();
				fileName = multi.getFilesystemName(itemImage);
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String u_id = (String) session.getAttribute("id");
		
		BreadVO vo = new BreadVO();
		vo.setU_id(u_id);
		
		BreadVO vo2 = new BreadVO();
		vo2.setU_id(u_id);
		vo2 = dao.selectStoreId(vo2);
		
		vo.setS_id(vo2.getS_id()); 		
		vo.setS_image(fileName);
		
		dao.sImageUpload(vo);

		return "redirect:breadStoreManage.do";
	}
	
	
	
	
	
	
	
	
	
	// BBANG - 메인 사진 업로드
	@RequestMapping("/breadMainUpload.do")
	public String breadMainUpload(Model model,HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		
		int size = 10 * 1024 * 1024; //585*468
		String path = "C:\\tmp";
		path = "C:\\Users\\admin\\git\\202106MiniPrj\\MiniPrj\\src\\main\\webapp\\resources\\breadMainUpload";
		String fileName = "";
		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(req, path, size, "utf-8", new DefaultFileRenamePolicy());
			Enumeration files = multi.getFileNames();
			while (files.hasMoreElements()) {
				String itemImage = (String) files.nextElement();
				fileName = multi.getFilesystemName(itemImage);
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String u_id = (String) session.getAttribute("id");
		
		BreadVO vo = new BreadVO();
		vo.setU_id(u_id);
		
		BreadVO vo2 = new BreadVO();
		vo2.setU_id(u_id);
		vo2 = dao.selectStoreId(vo2);
		
		vo.setS_id(vo2.getS_id()); 		
		vo.setB_main(fileName);
		
		dao.breadMainUpload(vo);

		return "redirect:breadStoreManage.do";
	}
	
	
	
//	
//	// 빵 수정
//	@RequestMapping("/breadUpdate.do")	
//	public String breadUpdate(Model model,BreadVO vo) {
//		model.addAttribute("bread", dao.breadUpdate(vo));
//		return "bread/breadUpdate";
//	}
//	
//	
	
	
	
//	===========================================================
//	===========================================================
	
	
	// 스토어 추가 
//		@RequestMapping("/storeInsert.do")	
//		public String storeInsert(Model model,BreadVO vo) {
//			model.addAttribute("bread", dao.storeInsert(vo));
//			return "bread/storeInsert";
//		}

	
	// 스토어 삭제
//	@RequestMapping("/storeDelete.do")	
//	public String storeDelete(Model model,BreadVO vo) {
//		model.addAttribute("bread", dao.storeDelete(vo));
//		return "bread/storeDelete";
//	}

	
	
	// 스토어 리스트 출력 
	
	@RequestMapping("/breadStore.do")
	public String breadStoreList(Model model, BreadVO vo, HttpServletRequest request) {
				
		List<BreadVO> list = dao.storeSelectList(vo);
		BreadVO vo2 = dao.storeAdr(vo);
		
		model.addAttribute("loc", vo2.getS_adr());
		model.addAttribute("store", list);
		return "bread/breadStore";
	}
	
	
	
	
	// 스토어 출력 
	
	@RequestMapping("/breadStoreSelect.do")
	public String breadStore(Model model, BreadVO vo, HttpServletRequest request) {
				
		BreadVO list = dao.storeSelect(vo);
		BreadVO vo2 = dao.storeAdr(vo);
		
		model.addAttribute("loc", vo2.getS_adr());
		model.addAttribute("store", list);
		return "bread/breadStore";
	}

//	// 스토어 리스트 페이징 출력 
//	
//	@RequestMapping("/breadStorePaging.do")
//	public String breadStoreListPaging(Model model, BreadVO vo) {
//		model.addAttribute("bread",dao.storeSelectListPaging(vo));
//		return "bread/breadStorePaging";
//	}

	

	// 스토어 좋아요 순위 리스트 
	
	@RequestMapping("/storeRankList.do")
	public String storeRankList(Model model, BreadVO vo) {
		model.addAttribute("bread",dao.storeRankList(vo));
		return "bread/storeRankList";
	}

	
	// 신규 스토어 오픈 리스트
	@RequestMapping("/storeOpenList.do")
	public String storeOpenList(Model model, BreadVO vo) {
		model.addAttribute("bread",dao.storeOpenList(vo));
		return "bread/storeOpenList";
	}

	
	
	
	
	
	
	
	// 지역별 
	
	
	@RequestMapping("/breadStore_1.do")
	public String breadStore_1(Model model, BreadVO vo) {
		model.addAttribute("bread", dao.breadStoreList_1(vo));
		return "bread/breadStore_1";
	}
	
	@RequestMapping("/breadStore_2.do")
	public String breadStore_2(Model model, BreadVO vo) {
		model.addAttribute("bread", dao.breadStoreList_2(vo));
		return "bread/breadStore_2";
	}
	
	@RequestMapping("/breadStore_3.do")
	public String breadStore_3(Model model, BreadVO vo) {
		model.addAttribute("bread", dao.breadStoreList_3(vo));
		return "bread/breadStore_3";
	}
	
	@RequestMapping("/breadStore_4.do")
	public String breadStore_4(Model model, BreadVO vo) {
		model.addAttribute("bread", dao.breadStoreList_4(vo));
		return "bread/breadStore_4";
	}
	
	@RequestMapping("/breadStore_5.do")
	public String breadStore_5(Model model, BreadVO vo) {
		model.addAttribute("bread", dao.breadStoreList_5(vo));
		return "bread/breadStore_5";
	}
	
	@RequestMapping("/breadStore_6.do")
	public String breadStore_6(Model model, BreadVO vo) {
		model.addAttribute("bread", dao.breadStoreList_6(vo));
		return "bread/breadStore_6";
	}
	
	@RequestMapping("/breadStore_7.do")
	public String breadStore_7(Model model, BreadVO vo) {
		model.addAttribute("bread", dao.breadStoreList_7(vo));
		return "bread/breadStore_7";
	}
	
	@RequestMapping("/breadStore_8.do")
	public String breadStore_8(Model model, BreadVO vo) {
		model.addAttribute("bread", dao.breadStoreList_8(vo));
		return "bread/breadStore_8";
	}
	
	@RequestMapping("/breadStore_9.do")
	public String breadStore_9(Model model, BreadVO vo) {
		model.addAttribute("bread", dao.breadStoreList_9(vo));
		return "bread/breadStore_9";
	}
	
	
}
