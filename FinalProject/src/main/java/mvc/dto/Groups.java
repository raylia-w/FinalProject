package mvc.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class Groups {

	private int group_no;
	
	private String group_id;
	
	private String location;
	
	private String manager_id;
	
	private String theme;
	
	private int personnel;
	
	private String chat_id;
	
	private String intro;
	
}
