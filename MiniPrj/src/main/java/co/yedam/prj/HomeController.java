package co.yedam.prj;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
	@RequestMapping("/home.do")
	public String home(Model model) {
		
		
		String asd = "test";
		model.addAttribute("test", asd );
		
		return "home";
	}
	
	@RequestMapping("/mypage.do")
	public String mypage() {
		
		
		return "mypage";
	}
	
	@RequestMapping("/memberInfo.do")
	public String memberInfo() {
		
		return "member/memberInfo";
	}

	@RequestMapping("/memberLogin.do")
	public String memberLogin() {
		return "member/memberLogin";
	}

	@RequestMapping("/memberSignup.do")
	public String memberSignup() {
		return "member/memberSignup";
	}

	@RequestMapping("/memberNormalSignup.do")
	public String memberNormalSignup() {
		return "member/memberNormalSignup";
	}

	@RequestMapping("/memberCeoSignup.do")
	public String memberCeoSignup() {
		return "member/memberCeoSignup";
	}
}
