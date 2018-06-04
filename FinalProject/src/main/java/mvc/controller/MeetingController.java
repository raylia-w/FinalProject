package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mvc.dto.Groups;
import mvc.dto.Meeting_reservation;
import mvc.service.MeetingService;

@Controller
public class MeetingController {
	
	@Autowired MeetingService service;
	
	@RequestMapping(value="/group/meeting/registration.do", method=RequestMethod.GET)
	public String groupMeeting(Groups group, Model model) {
		model.addAttribute("group", group);
		return "group/manager/meetingRegistration";
	}
	
	@RequestMapping(value="/group/meeting/registration.do", method=RequestMethod.POST)
	public String groupMeetingProc(Meeting_reservation meeting, String addr, String addrDetail) {
		String reservation_location = addr + addrDetail;
		meeting.setReservation_location(reservation_location);
		meeting.setStatus("예약");
		int gno = meeting.getGroup_no();
		service.insertMeeting(meeting);
		return "redirect:/group/main.do?group_no="+gno;
	}
	
	@RequestMapping(value="/group/meeting/detail.do")
	public void meetingInfo(Meeting_reservation meeting) {
		service.getMeetingInfo(meeting);
	}
	
	@RequestMapping(value="/group/meeting/list.do")
	public void meetingList(Groups group) {
		service.getMeetingList(group);
	}
	
	@RequestMapping(value="/group/meeting/locList.do")
	public String meetingLocationList() {
		return "group/manager/locationSelect";
	}
	
	@RequestMapping(value="/group/meeting/mod.do")
	public void meetingMod() {
		service.updateMeeting();
	}
	
	@RequestMapping(value="/group/meeting/cancel.do")
	public void meetingCancel() {
		service.deleteMeeting();
	}
	
}
