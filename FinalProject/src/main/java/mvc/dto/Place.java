package mvc.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class Place {
	
	private String com_id;
	private int pla_no;
	private String pla_name;
	private String pla_address;
	private String pla_phone;
	private String pla_money;
	private String pla_time;
	private String pla_statue;
	private int pla_start;
	private int pla_end;
	private int pla_people;
	
}
