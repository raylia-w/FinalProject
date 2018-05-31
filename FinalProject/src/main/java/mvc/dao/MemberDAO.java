package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.dto.Member;

@Repository
public interface MemberDAO {

	public List getMemberList();
	
	public Member getMemberInfo();
	
	public void memberRegistration();
	
	public void memberSecession();
	
}
