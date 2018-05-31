package mvc.service;

import java.io.File;
import java.io.IOException;
import java.security.acl.Group;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import mvc.dao.BoardDAO;
import mvc.dto.Board;
import mvc.dto.Comments;
import mvc.dto.Groups;
import mvc.dto.Photo;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired ServletContext context;
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
	public List getPhotoList(Groups group) {
		return dao.getPhotoList(group);
	}

	@Override
	public Photo getPhotoView() {
		return dao.getPhotoView();
	}

	@Override
	public void photoUpload(MultipartFile file, String user_nick, int group_no) {
		
		String uID = UUID.randomUUID().toString().split("-")[0];
		
		String realpath = context.getRealPath("upload");
		System.out.println(realpath);
		String stored = file.getOriginalFilename()+"-"+uID;
		
		System.out.println(realpath);
		
		File dest = new File(realpath, stored);
	
		try {
			file.transferTo(dest);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		Photo photo = new Photo();
		photo.setOriginal_name(file.getOriginalFilename());
		photo.setStored_name(stored);
		photo.setFile_size((int) file.getSize());
		photo.setGroup_no(group_no);
		photo.setUser_nick(user_nick);
		
		dao.photoUpload(photo);
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
