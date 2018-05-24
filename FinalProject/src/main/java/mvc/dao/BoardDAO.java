package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.dto.Board;
import mvc.dto.Photo;

@Repository
public interface BoardDAO {
	
	public List getBoardList();
	
	public Board getBoardView();
	
	public void boardWrite();
	
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
	
	public List getComments();
	
	public void commentsWrite();
	
	public void commentsMod();
	
	public void commentsDelete();
	
}
