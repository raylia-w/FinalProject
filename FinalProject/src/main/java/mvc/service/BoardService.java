package mvc.service;

import java.util.List;

import mvc.dto.Board;
import mvc.dto.Groups;
import mvc.dto.Photo;


public interface BoardService {
	
	public List getBoardList(Groups group);
	
	public Board getBoardView(Board board);
	
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
