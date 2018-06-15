package mvc.dao;

import java.util.List;

import mvc.dto.Groups;

public interface GroupDao {
		
	public List getGroupList();
	
	public Groups getGroupInfo(Groups group);

	public void createGroup();
	
	public void deleteGroup();
	
}
