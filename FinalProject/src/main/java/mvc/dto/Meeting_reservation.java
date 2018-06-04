package mvc.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class Meeting_reservation {
	
	private int meeting_no;
	
	private int date_start;
	
	private int date_end;
	
	private String reservation_location;
	
	private int personnel;

	private int group_no;
	
	private String status;
	
	private String res_day;
	
}
