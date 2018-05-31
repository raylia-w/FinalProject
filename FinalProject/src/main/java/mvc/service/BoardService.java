package mvc.service;

import java.security.acl.Group;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import mvc.dto.Board;
import mvc.dto.Comments;
import mvc.dto.Groups;
import mvc.dto.Photo;


public interface BoardService {
	
	public int getBoardCount(Groups group);
	
	public List getBoardList(Groups group);
	
	public Board getBoardView(Board board);
	
	public void boardWrite(Board board);
	
	public void boardMod();
	
	public void boardDelete();
	
	public List getNoticeList();
	
	public Board getNoticeView();
	
	public void noticeWrite();
	
	public void noticeMod();
	
	public void noticeDelete();
	
	public List getPhotoList(Groups group);
	
	public Photo getPhotoView();
	
	public void photoUpload(MultipartFile file, String user_nick, int group_no, HttpServletRequest request);
	
	public void photoDelete(Photo photo, HttpServletRequest request);
	
	public void updateRecommend();
	
	public void updateHit();

	public int getPhotoCount(Groups group);
		
	
}
