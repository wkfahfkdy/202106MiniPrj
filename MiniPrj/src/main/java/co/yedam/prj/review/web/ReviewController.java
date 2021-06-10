package co.yedam.prj.review.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ReviewController {
	
	
	@RequestMapping("/review.do")
	public String revBoardList(Model model) {
		
		return "review/review";
	}
	
}

