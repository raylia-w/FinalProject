package mvc.service;

import java.util.List;

import mvc.dto.Groups;


public interface GroupService {
	
	public List getGroupList();
	
	public Groups getGroupInfo(Groups group);
	
	public void createGroup();
	
	public void deleteGroup();
	
	public void memberRegistration();
	
	public void memberSecession();

}
