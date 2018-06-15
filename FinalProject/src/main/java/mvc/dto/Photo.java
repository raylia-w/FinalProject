package mvc.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data 
@Component
public class Photo {
	
	private int photo_no;
	
	private String stored_name;
	
	private String original_name;
	
	private int file_size;
	
	private String upload_date;
	
	private String user_id;
	
	private int group_no;
	
}
