package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.MeetingDao;
import mvc.dto.Com_userble;
import mvc.dto.Groups;
import mvc.dto.Meeting_guest;
import mvc.dto.Meeting_reservation;

@Service
public class MeetingServiceImpl implements MeetingService{

	@Autowired MeetingDao dao;
	
	@Override
	public List getMeetingList(Groups group) {
		return dao.getMeetingList(group);
	}
	
	@Override
	public List getMeetingGuest(Meeting_reservation meeting) {
		return dao.getMeetingGuest(meeting);
	}
	
	@Override
	public int isGuest(Meeting_guest guest) {
		return dao.isGuest(guest);
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
	public void updateMeeting(Meeting_reservation meeting) {
		dao.updateMeeting(meeting);
	}

	@Override
	public void deleteMeeting(Meeting_reservation meeting) {
		dao.deleteMeeting(meeting);
	}

	@Override
	public Meeting_reservation getCurrentMeeting(Groups group) {
		return dao.getCurrentMeeting(group);
	}
	
	@Override
	public List getPlaceList() {
		return dao.getPlaceList();
	}

	@Override
	public void insertUserble(Com_userble userble) {
		dao.insertUserble(userble);
	}
	
	@Override
	public void deleteUserble(Meeting_reservation meeting) {
		dao.deleteUserble(meeting);
	}

	@Override
	public void insertMeetingGuest(Meeting_guest guest) {
		dao.insertMeetingGuest(guest);
	}

}
