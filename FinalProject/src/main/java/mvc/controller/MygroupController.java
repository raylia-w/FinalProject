package mvc.controller;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mvc.dto.Groups;
import mvc.dto.Member;
import mvc.dto.User;
import mvc.service.GroupService;
import mvc.service.MygroupService;
import mvc.service.UserService;

@Controller
public class MygroupController {
private static final Logger logger = LoggerFactory.getLogger(MygroupController.class);

	@Autowired MygroupService mygroupService;
	@Autowired UserService userService;
	@Autowired GroupService groupService;

	@RequestMapping(value="/mygroup/mygroup.do", method=RequestMethod.GET)
	public void mygroup(Groups mygroup, Model model, HttpSession session) {
		logger.info("모임리스트 활성화");
		String uid=(String) session.getAttribute("userid");
		List<Groups> list = mygroupService.getList(uid);
		logger.info(list.toString());
		model.addAttribute("list", list);
		
//		user.setU_id((String) session.getAttribute("userid"));
//		model.addAttribute("user", userService.getUser(user));
//		logger.info(user.toString());
	}
	
	@RequestMapping(value="/mygroup/viewMygroup.do", method=RequestMethod.GET)
	public void viewMygroup(Groups mygroup, Model model, User user, HttpSession session) {
		logger.info("상세보기 폼 활성화");
		model.addAttribute("mygroup", mygroupService.getViewMygroup(mygroup));
		logger.info(mygroup.toString());
	}
	
	@RequestMapping(value="/mygroup/groupRegistration.do", method=RequestMethod.GET)
	public void groupRegist_form(HttpSession session) {
		session.setAttribute("u_id", session.getAttribute("userid"));
//		session.setAttribute("u_nick", session.getAttribute("usernick"));
	}
	
	@RequestMapping(value="/mygroup/groupRegistration.do", method=RequestMethod.POST)
	public String groupRegist_proc(Groups mygroup, User user, HttpSession session, Model model) {
		user.setU_id(session.getAttribute("userid").toString());
//		user.setU_nick(session.getAttribute("usernick").toString());
		String uuid = UUID.randomUUID().toString().split("-")[0]+"-"+mygroup.getGroup_no();
		mygroup.setChat_id(uuid);
		mygroup.setManager_id(user.getU_id());
		mygroupService.groupRegistration(mygroup);
		int gno = mygroup.getGroup_no();
		Member member = new Member();
		member.setGroup_no(gno);
		member.setU_id(user.getU_id());
		groupService.memberRegistration(member);
		
		String msg = "모임 생성을 환영합니다! 새로운 사람들과 설레임을 나눠보세요.";
		String url = "/mygroup/mygroup.do";
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "group/redirect";
	}
	
	@RequestMapping(value="/mygroup/mygroupDelete.do", method=RequestMethod.GET)
	public String mygroupDelete(Groups mygroup) {
		logger.info("모임삭제 활성화");
		logger.info(mygroup.toString());
		mygroupService.mygroupDelete(mygroup);
		return "redirect:/mygroup/mygroup.do";
	}
}
