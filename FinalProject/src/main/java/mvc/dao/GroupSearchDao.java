package mvc.dao;

import java.util.List;

import mvc.dto.Groups;

public interface GroupSearchDao {
	//카테고리 검색
	public List searchList(Groups mygroup);
	//main 카테고리 클릭 시 list 보이기
	public List selectAll(Groups mygroup);
	//키워드 검색
	public List keyword(Groups mygroup);
}
