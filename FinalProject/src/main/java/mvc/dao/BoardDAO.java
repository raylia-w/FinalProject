package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.dto.Board;
import mvc.dto.Comments;
import mvc.dto.Groups;
import mvc.dto.Photo;

@Repository
public interface BoardDAO {
	
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
	
	public List getPhotoList();
	
	public Photo getPhotoView();
	
	public void photoUpload();
	
	public void photoDelete();
	
	public void updateRecommend();
	
	public void updateHit();
	
	public List commentList();
	
	public int commentsWrite(Comments comments);
		
	public void commentsDelete(Comments comments);
	
}
