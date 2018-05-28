package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mvc.dto.Board;
import mvc.dto.Comments;
import mvc.dto.Groups;
import mvc.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired BoardService service;
	
	@RequestMapping(value="/group/board.do")
	public String groupBoard(Groups group, Board board, Model model) {
		
		model.addAttribute("nick", "닉네이이임");
		model.addAttribute("list", service.getBoardList(group));
		model.addAttribute("count", service.getBoardCount(group));
		
		return "group/board/board";
	}
	
	@RequestMapping(value="/group/board/detail.do")
	public void groupBoardDetail(Board board) {
		service.getBoardView(board);
	}
	
	@RequestMapping(value="/group/board/write.do", method=RequestMethod.GET)
	public String groupBoardWrite(Model model) {
		model.addAttribute("group", 3);
		model.addAttribute("nick", "니익네에임");
		return "group/board/write";
	}
	
	@RequestMapping(value="/group/board/write.do", method=RequestMethod.POST)
	public String groupBoardWriteProc(Board board) {
		service.boardWrite(board);
		return "redirect:/group/board.do?group_no="+board.getGroup_no();
	}
	
	@RequestMapping(value="/group/board/mod.do")
	public void groupBoardMod() {
		service.boardMod();
	}
	
	@RequestMapping(value="/group/board/delete.do")
	public void groupBoardDelete() {
		service.boardDelete();
	}
	
	@RequestMapping(value="/group/notice.do")
	public void groupNotice() {
		service.getNoticeList();
	}
	
	@RequestMapping(value="/group/notice/detail.do")
	public void groupNoticeDetail() {
		service.getNoticeView();
	}
	
	@RequestMapping(value="/group/notice/write.do")
	public void groupNoticeWrite() {
		service.noticeWrite();
	}
	
	@RequestMapping(value="/group/notice/mod.do")
	public void groupNoticeMod() {
		service.noticeMod();
	}
	
	@RequestMapping(value="/group/notice/delete.do")
	public void groupNoticeDelete() {
		service.noticeDelete();
	}
	
	@RequestMapping(value="/group/photo.do")
	public void groupPhoto() {
		service.getPhotoList();
	}
	
	@RequestMapping(value="/group/photo/detail.do")
	public void groupPhotoDetail() {
		service.getPhotoView();
	}
	
	@RequestMapping(value="/group/photo/upload.do")
	public void groupPhotoUpload() {
		service.photoUpload();
	}
	
	@RequestMapping(value="/group/photo/delete.do")
	public void groupPhotoDelete() {
		service.photoDelete();
	}

}
