package mvc.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class Meeting_reservation {
	
	private int meeting_no;
	
	private String date_start;
	
	private String date_end;
	
	private String reservation_location;
	
	private int personnel;

	private int group_no;
	
	private String status;
	
}
