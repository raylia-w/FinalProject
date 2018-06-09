package mvc.service;

import java.util.List;

import mvc.dto.Groups;
import mvc.dto.Meeting_reservation;


public interface MeetingService {

	public List getMeetingList(Groups group);
	
	public List getMeetingGuest(Meeting_reservation meeting);
	
	public Meeting_reservation getCurrentMeeting(Groups group);
	
	public Meeting_reservation getMeetingInfo(Meeting_reservation meeting);
	
	public void insertMeeting(Meeting_reservation meeting);
	
	public void updateMeeting();
	
	public void deleteMeeting(Meeting_reservation meeting);
	
	public List getPlaceList();
	
}
