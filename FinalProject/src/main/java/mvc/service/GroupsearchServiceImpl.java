package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.GroupSearchDao;
import mvc.dto.Groups;

@Service
public class GroupsearchServiceImpl implements GroupsearchService{
	@Autowired GroupSearchDao groupSearchDao;
	//카테고리 검색
	@Override
	public List searchList(Groups mygroup) {
		return groupSearchDao.searchList(mygroup);
	}
	//main 카테고리 클릭 시 list 보이기
	@Override
	public List selectAll(Groups mygroup) {
		return groupSearchDao.selectAll(mygroup);
	}
	//키워드 검색
	@Override
	public List keyword(Groups mygroup) {
		return groupSearchDao.keyword(mygroup);
	}
}
