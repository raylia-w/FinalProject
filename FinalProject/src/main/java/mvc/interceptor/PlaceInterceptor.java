package mvc.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class PlaceInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)	throws Exception{
		HttpSession session = request.getSession();
		if( session.getAttribute("comid") == null ) {
			response.sendRedirect("/company/companyError.do");
			return false;
		}
		return true;
	}

}
