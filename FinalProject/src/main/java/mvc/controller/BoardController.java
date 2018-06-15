package mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import mvc.dto.Board;
import mvc.dto.Groups;
import mvc.dto.Photo;
import mvc.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired BoardService service;
	
	@RequestMapping(value="/group/board.do")
	public String groupBoard(Groups group, HttpSession session,Board board, Model model) {
		model.addAttribute("user_id", session.getAttribute("userid"));
		model.addAttribute("group_no", group.getGroup_no());
		model.addAttribute("list", service.getBoardList(group));
		model.addAttribute("count", service.getBoardCount(group));
		
		return "group/board/board";
	}
	
	@RequestMapping(value="/group/board/detail.do")
	public void groupBoardDetail(Board board) {
		service.getBoardView(board);
	}
	
	@RequestMapping(value="/group/board/write.do", method=RequestMethod.GET)
	public String groupBoardWrite(Groups group, HttpSession session, Model model) {
		model.addAttribute("group", group.getGroup_no());
		model.addAttribute("user_id", session.getAttribute("userid"));
		return "group/board/write";
	}
	
	@RequestMapping(value="/group/board/write.do", method=RequestMethod.POST)
	public String groupBoardWriteProc(Board board) {
		service.boardWrite(board);
		return "redirect:/group/board.do?group_no="+board.getGroup_no();
	}
	
//	@RequestMapping(value="/group/board/mod.do")
//	public void groupBoardMod() {
//		service.boardMod();
//	}
	
	@RequestMapping(value="/group/board/delete.do", method=RequestMethod.GET)
	public String groupBoardDelete(Board board) {
		int bno = board.getBoard_no();
		int gno = board.getGroup_no();
		service.boardDelete(board);
		return "redirect:/group/board.do?group_no="+gno;
	}
	
	@RequestMapping(value="/group/notice.do", method=RequestMethod.GET)
	public String groupNotice(Groups group, Model model) {
		model.addAttribute("group_no", group.getGroup_no());
		model.addAttribute("list", service.getNoticeList(group));
		model.addAttribute("count", service.getNoticeCount(group));
		return "group/board/notice";
	}
	
	@RequestMapping(value="/group/notice/detail.do")
	public void groupNoticeDetail(Groups group) {
		service.getNoticeView(group);
	}
	
	@RequestMapping(value="/group/notice/write.do", method=RequestMethod.GET)
	public String groupNoticeWrite(Board board, HttpSession session, Model model) {
		model.addAttribute("group", 3);
		model.addAttribute("user_id", session.getAttribute("userid"));
		return "group/board/noticeWrite";
	}
	
	@RequestMapping(value="/group/notice/write.do", method=RequestMethod.POST)
	public String groupNoticeWriteProc(Board board) {
		service.noticeWrite(board);
		return "redirect:/group/notice.do?group_no="+board.getGroup_no();
	}
	
	@RequestMapping(value="/group/notice/delete.do")
	public void groupNoticeDelete(Board board) {
		service.noticeDelete(board);
	}
	
	@RequestMapping(value="/group/photo.do", method=RequestMethod.GET)
	public void groupPhoto(Groups group, HttpSession session, Model model) {
		model.addAttribute("group", group);
		model.addAttribute("user_id", session.getAttribute("userid"));
		model.addAttribute("list", service.getPhotoList(group));
		model.addAttribute("count", service.getPhotoCount(group));
	}
	
	@RequestMapping(value="/group/photo/detail.do")
	public void groupPhotoDetail() {
		service.getPhotoView();
	}
	
	@RequestMapping(value="/group/photoUpload.do")
	public String uploadPopUp(Groups group, HttpSession session, Model model) {
		model.addAttribute("group_no", group.getGroup_no());
		model.addAttribute("user_id", session.getAttribute("userid"));
		return "group/manager/exception/photoUpload";
	}
	
	@RequestMapping(value="/group/photo/upload.do", method=RequestMethod.POST)
	public String groupPhotoUpload(MultipartFile file, @RequestParam("user_id")String user_id, @RequestParam("group_no") int group_no, HttpServletRequest request) {
		service.photoUpload(file, user_id, group_no, request);
		return "redirect:/group/photo.do?group_no="+group_no;
	}
	
	@RequestMapping(value="/group/photo/delete.do", method=RequestMethod.GET)
	public String groupPhotoDelete(Photo photo, HttpServletRequest request) {
		int gno = photo.getGroup_no();
		service.photoDelete(photo, request);
		return "redirect:/group/photo.do?group_no="+gno;
	}

}
