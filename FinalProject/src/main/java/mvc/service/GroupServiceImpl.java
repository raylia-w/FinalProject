package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.GroupDAO;
import mvc.dao.MemberDAO;
import mvc.dto.Groups;

@Service
public class GroupServiceImpl implements GroupService{

	@Autowired GroupDAO groupDao;
	@Autowired MemberDAO memberDao;
	

	@Override
	public List getGroupList() {
		return groupDao.getGroupList();
	}
	
	@Override
	public Groups getGroupInfo(Groups group) {
		return groupDao.getGroupInfo(group);
	}

	@Override
	public void memberSecession() {
		memberDao.memberSecession();
	}
	
	@Override
	public void memberRegistration() {
		memberDao.memberRegistration();
	}

	@Override
	public void createGroup() {
		groupDao.createGroup();
	}

	@Override
	public void deleteGroup() {
		groupDao.deleteGroup();
	}

}
