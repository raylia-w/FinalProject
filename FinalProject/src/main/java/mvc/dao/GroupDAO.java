package mvc.dao;

import java.util.List;

import mvc.dto.Groups;

public interface GroupDAO {
		
	public List getGroupList();
	
	public Groups getGroupInfo(Groups group);

	public void createGroup();
	
	public void deleteGroup();
	
}
