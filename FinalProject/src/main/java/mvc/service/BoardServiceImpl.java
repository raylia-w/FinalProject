package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.BoardDAO;
import mvc.dto.Board;
import mvc.dto.Comments;
import mvc.dto.Groups;
import mvc.dto.Photo;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired BoardDAO dao;
	
	@Override
	public int getBoardCount(Groups group) {
		return dao.getBoardCount(group);
	}

	@Override
	public List getBoardList(Groups group) {
		return dao.getBoardList(group);
	}

	@Override
	public Board getBoardView(Board board) {
		return dao.getBoardView(board);
	}

	@Override
	public void boardWrite(Board board) {
		dao.boardWrite(board);
	}

	@Override
	public void boardMod() {
		dao.boardMod();
	}

	@Override
	public void boardDelete() {
		dao.boardDelete();
	}

	@Override
	public List getNoticeList() {
		return dao.getNoticeList();
	}

	@Override
	public Board getNoticeView() {
		return dao.getNoticeView();
	}

	@Override
	public void noticeWrite() {
		dao.noticeWrite();
	}

	@Override
	public void noticeMod() {
		dao.noticeMod();
	}

	@Override
	public void noticeDelete() {
		dao.noticeDelete();
	}

	@Override
	public List getPhotoList() {
		return dao.getPhotoList();
	}

	@Override
	public Photo getPhotoView() {
		return dao.getPhotoView();
	}

	@Override
	public void photoUpload() {
		dao.photoUpload();
	}

	@Override
	public void photoDelete() {
		dao.photoDelete();
	}

	@Override
	public void updateRecommend() {
		dao.updateRecommend();
	}

	@Override
	public void updateHit() {
		dao.updateHit();
	}


}
