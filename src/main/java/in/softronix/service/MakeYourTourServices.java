package in.softronix.service;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import in.softronix.request.Passanger;
import in.softronix.response.Ticket;
import jakarta.websocket.server.PathParam;

@Service
public class MakeYourTourServices {
	private static final String IRCTC_ENDPOINT1="http://54.234.134.1:9090/ticket";
	private static final String IRCTC_ENDPOINT2 ="http://54.234.134.1:9090/ticket/{ticketId}";

	
	public Ticket processTicketBooking(Passanger passenger)
	{
		RestTemplate rt=new RestTemplate();
		
		ResponseEntity<Ticket> entity = rt.postForEntity(IRCTC_ENDPOINT1, passenger, Ticket.class);
	     System.out.println(entity );
		int statusCode = entity.getStatusCodeValue();
		
		System.out.println(statusCode);
		
		if(statusCode==200)
		{
			return entity.getBody();
		}
			return null;
		
	}
	
	public Ticket getTicketDetails(@PathParam(value = "ticketId") Integer ticketId)
	{
		RestTemplate rt=new RestTemplate();
		
		ResponseEntity<Ticket> responseEntity = rt.getForEntity(IRCTC_ENDPOINT2,Ticket.class,ticketId);
		System.out.println(responseEntity);
		
		int code = responseEntity.getStatusCodeValue();
		
		System.out.println(code);
		
		if(code==200)
		{
			return responseEntity.getBody();
		}
		
		return null;
	}

}
