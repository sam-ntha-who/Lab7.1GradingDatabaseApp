package co.grandcircus.Lab71GradingApp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GradeController {

	@Autowired
	private GradeRepository repo;
	
	@RequestMapping("/")
	public String index() {
		return "redirect:/homepage";
	}
	
	@RequestMapping("homepage")	
	public String showHomepage(Model model) {
		List<Grade> grades = repo.findAll();
		model.addAttribute("grades", grades);
		return "homepage";	
}
	
	@RequestMapping("addGrade")
	public String showAddGrade() {
		return "addGrade";
	}
	
	@RequestMapping("confirmGrade")
	public String showConfirmGrade() {
		return "confirmGrade";
	}
	
}
