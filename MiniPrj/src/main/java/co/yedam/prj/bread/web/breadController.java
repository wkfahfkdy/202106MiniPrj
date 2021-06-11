package co.yedam.prj.bread.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class breadController {


	@RequestMapping("/bread.do")
	public String bread() {
		
		return "bread/bread";
	
	
}
	
	
	
}
