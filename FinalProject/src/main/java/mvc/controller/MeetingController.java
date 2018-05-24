package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.dto.Groups;
import mvc.dto.Meeting_reservation;
import mvc.service.MeetingService;

@Controller
public class MeetingController {
	
	@Autowired MeetingService service;
	
	@RequestMapping(value="/meeting/detail")
	public void meetingInfo(Meeting_reservation meeting) {
		service.getMeetingInfo(meeting);
	}
	
	@RequestMapping(value="/meeting/list")
	public void meetingList(Groups group) {
		service.getMeetingList(group);
	}
	
	@RequestMapping(value="/meeting/locList")
	public void meetingLocationList() {
		
	}

	@RequestMapping(value="/meeting/complete.do")
	public void meetingComplete() {
		service.insertMeeting();
	}
	
	@RequestMapping(value="/meeting/mod.do")
	public void meetingMod() {
		service.updateMeeting();
	}
	@RequestMapping(value="/meeting/cancel.do")
	public void meetingCancel() {
		service.deleteMeeting();
	}
	
}
