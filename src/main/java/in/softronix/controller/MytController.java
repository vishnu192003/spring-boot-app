package in.softronix.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import in.softronix.request.Passanger;
import in.softronix.response.Ticket;
import in.softronix.service.MakeYourTourServices;


@Controller
public class MytController {
	
	@GetMapping("/")
	public String homePage()
	{
		return "index";
	}
	
	@Autowired
	MakeYourTourServices service;
	
	
	@GetMapping("/bookTicket")
	public String bookyourticket()
	{
		return "ticket";
	}
	
	@GetMapping("/getTicket")
	public String getyourticket()
	{
		
		return "getticket";
	}
	
	@PostMapping("/ticket")
	public String getTicket(Passanger passenger,Model model)
	{
		System.out.println(passenger);
		
		Ticket ticket = service.processTicketBooking(passenger);
		
		model.addAttribute("ticket",ticket);
		
		return "success";
		
	}
	
	@GetMapping("/searchticket")
	public String searchTicket(@RequestParam Integer ticketId, Model model) {

	    Ticket ticket = service.getTicketDetails(ticketId);
	    model.addAttribute("ticket", ticket);

	    return "ticket-details"; // JSP name
	}



}
