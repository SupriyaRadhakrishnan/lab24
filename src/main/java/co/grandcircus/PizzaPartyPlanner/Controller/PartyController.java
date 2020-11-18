package co.grandcircus.PizzaPartyPlanner.Controller;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.grandcircus.PizzaPartyPlanner.POJO.Party;
import co.grandcircus.PizzaPartyPlanner.POJO.Rsvp;
import co.grandcircus.PizzaPartyPlanner.Respository.PartyRepository;
import co.grandcircus.PizzaPartyPlanner.Respository.RsvpRepository;


@Controller
public class PartyController {
	
	
	@Autowired
	private PartyRepository rep;
	
	@Autowired
	private RsvpRepository rrep;
	
	@GetMapping("/")
	public String index(Model model)
	{
		List<Party> partynames = rep.findAll();
		System.out.println(partynames);
	    model.addAttribute("partynames",partynames);
		return "index";
	}
	
	@PostMapping("/")
	public String display(@RequestParam(required=false ,defaultValue="" ,value="party") String party,Model model)
	{
		List<Party> parties = rep.findByNameContaining(party);
		List<Party> partynames = rep.findAll();
		System.out.println(partynames);
	    model.addAttribute("partynames",partynames);		
		System.out.println(party);	
	    model.addAttribute("parties",parties);

	    return "index";
	}
	
	@GetMapping("/admin")
	public String admin(Model model)
	{
		List<Party> parties = rep.findByOrderByPdateDesc();
		model.addAttribute("parties",parties);
		return "admin";
	}
	
	
	@GetMapping("/delete")
	public String delete(long id)
	{

	    rep.deleteById(id);	
		return "redirect:/admin";
	}
	
	@GetMapping("/editparty")
	public String edit(long id,Model model)
	{

	    Party party = rep.findById(id).get();
	    model.addAttribute("party",party);
		return "editparty";
	}
	
	@PostMapping("/editparty")
	public String editparty(Party party,String newdate)
	{
		System.out.println("newdate:" + newdate.replace("T"," "));
		if(!newdate.isEmpty())
		{
			newdate = newdate.concat(":00");
		party.setPdate(Timestamp.valueOf(newdate.replace("T"," ")));
		}
        rep.save(party);
		return "redirect:/admin";
	}
	@PostMapping("/addrsvp")
	public String addrsvp(Rsvp rsvp)
	{
        rrep.save(rsvp);
		return "redirect:/";
	}
	@GetMapping("/details")
	public String details(long id,Model model)
	{

	    Party party = rep.findById(id).get();
	   
	    model.addAttribute("party",party);
		return "details";
	}
	@PostMapping("/add")
	public String add(Party party,String newdate)
	{
		if(!newdate.isEmpty())
		{
			newdate = newdate.concat(":00");
		party.setPdate(Timestamp.valueOf(newdate.replace("T"," ")));
		}
        rep.save(party);
		return "redirect:/admin";
	}

}
