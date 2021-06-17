package co.yedam.prj.bread.web;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
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


	
	
	
	
	//My shop Manage => INFORM 수정 부분
	@RequestMapping("/breadStoreManage.do")
	public String breadStoreManage(Model model, BreadVO vo, HttpSession session) {
		
		String u_id = (String) session.getAttribute("id");
		vo.setU_id(u_id);
		
		BreadVO vo2 = new BreadVO(); 
		vo2 = dao.selectStoreId(vo);
		
		vo.setS_id(vo2.getS_id());
		System.out.println(vo.getS_id());
		
		BreadVO vo3 = dao.storeAdr(vo);
		model.addAttribute("loc", vo3.getS_adr());
		
		System.out.println(dao.storeSelectMP(vo));
		
		model.addAttribute("bread",dao.storeSelectMP(vo));
		
		return "breadStoreManage";
	}
	
	
	
	
	//코드 순서는 BreadService 나열 순으로 정리 되어 있습니다.
	
	
	//빵 리스트 출력 
	@RequestMapping("/bread.do")	
	public String breadSelectList(Model model,BreadVO vo) {
		
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
//	@RequestMapping("/breadDelete.do")	
//	public String breadDelete(Model model,BreadVO vo) {
//		model.addAttribute("bread", dao.breadDelete(vo));
//		return "bread/breadDelete";
//	}
	
	//빵 입력 페이지 이동
	@RequestMapping("/breadInsertMenu.do")
	public String breadInsertMenu() {
		
		return "breadInsertMenu";
	}
	
	//빵 메뉴 추가하기
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
