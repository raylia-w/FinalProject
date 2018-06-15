package mvc.controller;

import java.util.List;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mvc.dto.Groups;
import mvc.service.GroupsearchService;

@Controller
public class mainController {
	
	@Autowired GroupsearchService groupsearchService;
	
	private static final Logger logger = LoggerFactory.getLogger(mainController.class);
	
	//메인
	@RequestMapping(value="/tiles/main.do", method=RequestMethod.GET)
	public void Main() { }
	
	//키워드 검색
	@RequestMapping(value="/tiles/search.do", method=RequestMethod.GET)
	public void searchProc(Model model, Groups mygroup) {
		List<Groups> keysearch = groupsearchService.keyword(mygroup);
		model.addAttribute("keysearch", keysearch);
	}
	
	//모임 보이기
	@RequestMapping(value = "/tiles/group.do", method=RequestMethod.GET)
	public void group() { }
	
	//모임 검색
	@RequestMapping(value = "/tiles/group.do", method=RequestMethod.POST)
	public void groupProc(Model model, Groups mygroup) { 
		System.out.println(mygroup);
		List<Groups> list = groupsearchService.searchList(mygroup);
		model.addAttribute("list", list);
	}
	
	//main 카테고리
	@RequestMapping(value="/tiles/categoryGroup.do", method=RequestMethod.GET)
	public void CategoryGroup(Model model, Groups mygroup) { 
		System.out.println(mygroup);
		List<Groups> list = groupsearchService.selectAll(mygroup);
		model.addAttribute("list", list);
	}
	
	//모임 보이기
		@RequestMapping(value = "/tiles/login.do", method=RequestMethod.GET)
		public void test() { }
		
		//모임 보이기
				@RequestMapping(value = "/test/test.do", method=RequestMethod.GET)
				public void test1() { }
		
	
}
