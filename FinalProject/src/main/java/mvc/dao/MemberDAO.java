package mvc.dao;

import java.util.List;

import mvc.dto.Member;

public interface MemberDAO {

	public List getMemberList();
	
	public Member getMemberInfo();
	
	public void memberRegistration();
	
	public void memberSecession();
	
}
