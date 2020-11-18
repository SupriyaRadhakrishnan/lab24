package co.grandcircus.PizzaPartyPlanner.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import co.grandcircus.PizzaPartyPlanner.POJO.Party;
import co.grandcircus.PizzaPartyPlanner.Respository.PartyRepository;


@Controller
public class PartyController {
	
	
	@Autowired
	private PartyRepository rep;
	
	@GetMapping("/")
	public String index(Model model)
	{
		
		List<Party> parties = rep.findAll();
		System.out.println("Hello");
	    model.addAttribute("parties",parties);
		return "index";
	
	}
	

}
