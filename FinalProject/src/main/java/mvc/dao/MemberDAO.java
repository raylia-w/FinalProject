package mvc.dao;

import java.util.List;

import mvc.dto.Groups;
import mvc.dto.Member;

public interface MemberDao {

	public List getMemberList(Groups group);
	
	public Member getMemberInfo();
	
	public int isMember(Member member);
	
	public void memberRegistration(Member member);
	
	public void memberSecession(Member member);
	
}
