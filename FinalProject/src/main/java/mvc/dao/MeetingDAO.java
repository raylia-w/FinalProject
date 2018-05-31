package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.dto.Groups;
import mvc.dto.Meeting_reservation;

@Repository
public interface MeetingDAO {
	
	public List getMeetingList(Groups group);
	
	public Meeting_reservation getMeetingInfo(Meeting_reservation meeting);
	
	public void insertMeeting();
	
	public void updateMeeting();
	
	public void deleteMeeting();
}
