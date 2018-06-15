package mvc.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import mvc.dto.Member;
import mvc.service.GroupService;

public class GroupInterceptor extends HandlerInterceptorAdapter{
	
	@Autowired GroupService service;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		HttpSession session = request.getSession();
        String uid = (String) session.getAttribute("userid");
        String gno = request.getParameter("group_no");
        int group_no = Integer.parseInt(gno);
        Member member = new Member();
        member.setU_id(uid);
        member.setGroup_no(group_no);
        
        if ( uid == null || service.isMember(member)<1){
            response.sendRedirect("/group/error.do");
            return false;
        }

        return true;
	}
}
