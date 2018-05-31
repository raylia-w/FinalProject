package mvc.controller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mvc.dto.Groups;
import mvc.service.BoardService;
import mvc.service.GroupService;
import mvc.service.MeetingService;

@Controller
public class GroupController {
	
	@Autowired ServletContext context;
	@Autowired GroupService groupService;
	@Autowired BoardService boardService;
	@Autowired MeetingService meetingService;
 
	@RequestMapping(value="/group/list.do")
	public void groupList() {
		groupService.getGroupList();
	}
	
	@RequestMapping(value="/group/main.do", method=RequestMethod.GET)
	public String groupMain(Groups group, Model model) {
		
		model.addAttribute("group", groupService.getGroupInfo(group));
		model.addAttribute("meeting", meetingService.getMeetingList(group));
		model.addAttribute("board", boardService.getBoardList(group));
		model.addAttribute("count", boardService.getBoardCount(group));
		return "group/main";
	}
	
	@RequestMapping(value="/group/chat.do")
	public void groutChat() {
		
	}
	
	@RequestMapping(value="/group/manager.do")
	public void groupManager() {
		
	}
	
	@RequestMapping(value="/group/registration.do")
	public void groupRegistration() {
		groupService.memberRegistration();
	}
	
	@RequestMapping(value="/group/secession")
	public void groupSecession() {
		groupService.memberSecession();
	}
	
	@RequestMapping(value="/group/create.do")
	public void groupCreate() {
		groupService.createGroup();
	}
	
	@RequestMapping(value="/group/delete.do")
	public void groupDelete() {
		groupService.deleteGroup();
	}
	
	@RequestMapping(value="/group/meeting.do")
	public void groupMeeting() {
		
	}
	
}
