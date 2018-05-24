package mvc.service;

import java.util.List;

import org.springframework.stereotype.Service;

import mvc.dto.Groups;


public interface GroupService {
	
	public List getGroupList();
	
	public Groups getGroupInfo();
	
	public void memberRegistration();
	
	public void memberSecession();
	
	public void createGroup();
	
	public void deleteGroup();
	
	
}
