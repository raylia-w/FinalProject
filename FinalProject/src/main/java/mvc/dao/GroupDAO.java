package mvc.dao;

import java.util.List;

import mvc.dto.Groups;

public interface GroupDAO {
		
	public List getGroupList();
	
	public Groups getGroupInfo();

	public void createGroup();
	
	public void deleteGroup();
	
	public void memberRegistration();
	
	public void memberSecession(); 
	
}
