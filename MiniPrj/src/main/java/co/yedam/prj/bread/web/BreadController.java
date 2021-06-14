package co.yedam.prj.bread.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.prj.bread.service.BreadService;
import co.yedam.prj.bread.vo.BreadVO;

@Controller
public class BreadController {

	@Autowired
	private BreadService dao;

	
	
	//코드 순서는 BreadService 나열 순으로 정리 되어 있습니다.
	
	
	//빵 리스트 출력 ( 페이징 처리 할지 말지?)
	
	
	@RequestMapping("/bread.do")	
	public String breadSelectList(Model model,BreadVO vo) {
		
		model.addAttribute("bread", dao.breadSelectList(vo));
		//경로이동이안돼서 일단 막아뒀어여! -담이
		return "bread/bread";
	}
	
	
	@RequestMapping("/bread_page.do")	
	public String breadstore_page(Model model,BreadVO vo) {
		
		model.addAttribute("bread", dao.breadSelectList(vo));
		//경로이동이안돼서 일단 막아뒀어여! -담이
		return "bread/bread";
	}
	
	
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

	
	// 스토어 수정
//	@RequestMapping("/storeUpdate.do")	
//	public String storeUpdate(Model model,BreadVO vo) {
//		model.addAttribute("bread", dao.storeUpdate(vo));
//		return "bread/storeUpdate";
//	}
	
	
	// 스토어 리스트 출력 (페이징 처리 할지 말지?)
	
	@RequestMapping("/breadStore.do")
	public String breadStoreList(Model model, BreadVO vo, HttpServletRequest request) {
		
		String s_name = request.getParameter("s_name");
		String s_content = request.getParameter("s_content");
		String s_id = request.getParameter("s_id");
		String b_comment= request.getParameter("b_comment");
		String b_image = request.getParameter("b_image");
		
		vo.setS_name(s_name);
		vo.setS_content(s_content);
		vo.setS_id(s_id);
		vo.setB_comment(b_comment);
		vo.setB_image(b_image);
		
		
		model.addAttribute("s_id", s_id);
		model.addAttribute("s_content", s_content);
		model.addAttribute("s_name", s_name);
		model.addAttribute("b_comment", b_comment);
		model.addAttribute("b_iamage", b_image);
		model.addAttribute("store",dao.storeSelectList(vo));
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
