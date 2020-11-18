package co.grandcircus.PizzaPartyPlanner.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.data.domain.Sort;
import co.grandcircus.PizzaPartyPlanner.POJO.PartyOption;
import co.grandcircus.PizzaPartyPlanner.Respository.PartyOptionRepository;


@Controller
public class PartyOptionController {
	
	@Autowired
	private PartyOptionRepository rep;
	
	
	@GetMapping("/vote")
	public String vote(Model model)
	{
		List<PartyOption> partyoptions = rep.findAll();
		model.addAttribute("partyoptions",partyoptions);
		return "vote";
	}
	
	@GetMapping("/vote/{id}")
	public String vote(@PathVariable("id") long id ,Model model)
	{
		PartyOption partyoption = rep.findById(id).get();
		partyoption.setVotes(partyoption.getVotes()+1);
		rep.save(partyoption);
		return "redirect:/";
	}
	
	@PostMapping("/vote")
	public String adding(@RequestParam("type") String type, PartyOption partyoption)
	{
		
		partyoption.setType(type);
		partyoption.setVotes(0);
		rep.save(partyoption);
		return "redirect:/vote";
	}

	
	@GetMapping("/review")
	public String review(Model model)
	{
		List<PartyOption> partyoptions = rep.findByVotes(0);
		model.addAttribute("partyoptions",partyoptions);
		return "review";
	}
	
	@GetMapping("/edit")
	public String edit(long id ,Model model)
	{
		PartyOption partyoption = rep.findById(id).get();
		model.addAttribute("partyoption",partyoption);
		return "edit";
	}
	
	
	@PostMapping("/edit")
	public String edit(@RequestParam("type") String type,PartyOption partyoption)
	{
		//partyoption.setType(type);
		rep.save(partyoption);
		return "redirect:/";
	}
}
