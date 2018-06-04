package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.MeetingDAO;
import mvc.dto.Groups;
import mvc.dto.Meeting_reservation;

@Service
public class MeetingServiceImpl implements MeetingService{

	@Autowired MeetingDAO dao;
	
	@Override
	public List getMeetingList(Groups group) {
		return dao.getMeetingList(group);
	}
	
	@Override
	public Meeting_reservation getMeetingInfo(Meeting_reservation meeting) {
		return dao.getMeetingInfo(meeting);
	}

	@Override
	public void insertMeeting(Meeting_reservation meeting) {
		dao.insertMeeting(meeting);
	}

	@Override
	public void updateMeeting() {
		dao.updateMeeting();
	}

	@Override
	public void deleteMeeting() {
		dao.deleteMeeting();
	}

}
