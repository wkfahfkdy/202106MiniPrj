package co.yedam.prj.bread.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.prj.bread.service.BreadService;

@Controller
public class BreadController {

	@Autowired
	private BreadService dao;

	@RequestMapping("/bread.do")
	public String bread(Model model) {
		//model.addAttribute("bread", dao.breadSelectList());
		//경로이동이안돼서 일단 막아뒀어여! -담이
		return "bread/bread";
	}
	
	
	
	@RequestMapping("/breadStore.do")
	public String breadStore() {
		
		
		return "bread/breadStore";
	}

	
	
	
	// 지역별 
	
	
	@RequestMapping("/breadStore_1.do")
	public String breadStore_1(Model model) {
		model.addAttribute("bread", dao.breadStoreList_1());
		return "bread/breadStore";
	}
	
	@RequestMapping("/breadStore_2.do")
	public String breadStore_2(Model model) {
		model.addAttribute("bread", dao.breadStoreList_2());
		return "bread/breadStore";
	}
	
	@RequestMapping("/breadStore_3.do")
	public String breadStore_3(Model model) {
		model.addAttribute("bread", dao.breadStoreList_3());
		return "bread/breadStore";
	}
	
	@RequestMapping("/breadStore_4.do")
	public String breadStore_4(Model model) {
		model.addAttribute("bread", dao.breadStoreList_4());
		return "bread/breadStore";
	}
	
	@RequestMapping("/breadStore_5.do")
	public String breadStore_5(Model model) {
		model.addAttribute("bread", dao.breadStoreList_5());
		return "bread/breadStore";
	}
	
	@RequestMapping("/breadStore_6.do")
	public String breadStore_6(Model model) {
		model.addAttribute("bread", dao.breadStoreList_6());
		return "bread/breadStore";
	}
	
	@RequestMapping("/breadStore_7.do")
	public String breadStore_7(Model model) {
		model.addAttribute("bread", dao.breadStoreList_7());
		return "bread/breadStore";
	}
	
	@RequestMapping("/breadStore_8.do")
	public String breadStore_8(Model model) {
		model.addAttribute("bread", dao.breadStoreList_8());
		return "bread/breadStore";
	}
	
	@RequestMapping("/breadStore_9.do")
	public String breadStore_9(Model model) {
		model.addAttribute("bread", dao.breadStoreList_9());
		return "bread/breadStore";
	}
	
	
}
