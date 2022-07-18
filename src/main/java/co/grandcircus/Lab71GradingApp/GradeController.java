package co.grandcircus.Lab71GradingApp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		int count = (int) repo.count();
		model.addAttribute("count", count);
		model.addAttribute("grades", grades);
		return "homepage";	
}
	@RequestMapping("deleteGrade")
	public String deleteGrade(@RequestParam String id) {
		repo.deleteById(id);
		return "redirect:/homepage";
	}
	
	@RequestMapping("addGrade")
	public String showAddGrade(Model model) {
		Grade grade = new Grade();
		model.addAttribute("grade", grade);

		return "addGrade";
	}
	
	@PostMapping("confirmGrade")
	public String confirmGrade(Model model, String id, String name, String type, double score, double total) {
		model.addAttribute("name", name);
		model.addAttribute("type", type);
		model.addAttribute("score", score);
		model.addAttribute("total", total);
		Grade grade = new Grade(id, name, type, score, total);
		repo.save(grade);
		return "confirmGrade";
		
	}
	
	
	@RequestMapping("confirmGrade")
	public String showConfirmGrade() {
		return "confirmGrade";
	}
	
}
