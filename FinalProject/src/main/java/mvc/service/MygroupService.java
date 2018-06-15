package mvc.service;

import java.util.List;

import mvc.dto.Groups;
import mvc.dto.Mygroup;

public interface MygroupService {
	
	public int groupRegistration(Groups mygroup);
	
	public List getList(String user);
	
	public Mygroup getViewMygroup(Groups mygroup);
	
	public void mygroupDelete(Groups mygroup);

}
