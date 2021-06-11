package co.yedam.prj.review.service;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ReviewController {
	
	
	@RequestMapping("/review.do")
	public String review(Model model) {
		
		return "review/review";
	}
	
	@RequestMapping("/reviewDetail.do")
	public String reviewDetail(Model model) {
		
		return "review/reviewDetail";
	}
	
}

