package mvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import mvc.dto.Company;
import mvc.dto.Place;
import mvc.service.CompanyService;
import mvc.service.PlaceService;
import mvc.util.Paging;

@Controller
public class CompanyController {
	@Autowired PlaceService pla;
	@Autowired CompanyService com;
	//메인
		@RequestMapping(value="/company/main.do")
		public String getPlaceList(Place place,Model model, @RequestParam(defaultValue="0")int curPage) {
//			
//			List<Place> list = pla.getPlaceList();
//			model.addAttribute("list", list);
			
			//totalCount : DB에서 조회 
			int totalCount = pla.getTotalCount();
			
			//전체 대상에 대한 페이징
			Paging paging = new Paging(totalCount, curPage);
			model.addAttribute("paging",paging);
			
			//페이징처리된 게시글 목록(현재)
			List list = pla.getPagingList(paging);
			model.addAttribute("list",list);
			
			return "place/placeList";
			
		}
		
		//회원가입
		@RequestMapping(value="/company/join.do", method=RequestMethod.GET)
		public void join() {
			System.out.println("회원가입 페이지");
			

		}
		
		//회원가입Proc
		@RequestMapping(value="/company/join.do", method=RequestMethod.POST)
		public String joinProc(Company company, Model model) {
			System.out.println(company);
			 boolean joinResult = com.join(company);
			 
			 if(joinResult) {
				
				 model.addAttribute("msg","회원가입 성공했습니다");
				 model.addAttribute("url","/company/main.do");
			 }else {
				
				 model.addAttribute("msg","회원가입 실패했습니다. 다시 작성해주세요");
				 model.addAttribute("url","/company/join.do");
			 }
			return "util/alert";
		}
		
		//아이디 중복체크
		@ResponseBody
		@RequestMapping(value="/company/idCheck.do",method=RequestMethod.POST, produces = "application/json")
		public String idCheck(Company company) {
			return ""+com.idCheck(company);
		}
		
		//로그인폼
		@RequestMapping(value="/company/login.do",method=RequestMethod.GET)
		public void login() {
			
		}
		
		//로그인 활성화 
		@RequestMapping(value="/company/main.do",method=RequestMethod.POST)
		public String loginProcess(Company company,HttpSession session,Model model) {
			System.out.println(company.getCom_id());
			if(com.getOneCompany(company) ) {
				session.setAttribute("comid", company.getCom_id() );
			
			 model.addAttribute("msg","로그인되었습니다");
			 model.addAttribute("url","/company/main.do");
			}else {
				 model.addAttribute("msg","로그인 실패. 다시 입력해주세요");
				 model.addAttribute("url","/company/login.do");
			}
				return "util/alert";
			
		}
		//로그아웃
		@RequestMapping(value="/company/logout.do",method=RequestMethod.GET)
		public String logout(HttpSession session,Model model ) {
			 session.invalidate();
			System.out.println("로그아웃");
			
			model.addAttribute("msg","로그아웃 되었습니다");
			model.addAttribute("url","/company/main.do");
			return "util/alert";
		}	
		
		

		
		//회원정보 수정 
		@RequestMapping(value="/company/update.do",method=RequestMethod.GET)
		public void comupdate(Company company,Model model,HttpSession session) {
			System.out.println("회원정보수정하기");
			company.setCom_id((String)session.getAttribute("comid" ) );
			
			model.addAttribute("update", com.getCompanyInfo(company));
		System.out.println(company.getCom_id());
		}
		
		//회원정보 수정 활성화
		@RequestMapping(value="/company/update.do",method=RequestMethod.POST)
		public String comupdateProcess(Company company,Model model,HttpSession session) {
//			System.out.println(company.getCom_email());
//			System.out.println(company.getCom_id());
//			System.out.println(company.getCom_name());
			company.setCom_id((String)session.getAttribute("comid"));
			com.comupdate(company);
			System.out.println(company.getCom_id());
			model.addAttribute("update", com.getCompanyInfo(company) );
			System.out.println(company.getCom_id());
			
			 model.addAttribute("msg","수정되었습니다");
			 model.addAttribute("url","/company/main.do");
			return "util/alert";
		}
		
		//로그인 안되었을 때 장소등록 
		@RequestMapping(value="/company/companyError.do")
		public String error(Model model) {
			model.addAttribute("msg","로그인 후 이용하세요");
			model.addAttribute("url","/company/login.do");
			return "util/alert";
		}
		
		//회원탈퇴 
		@RequestMapping(value="/company/comDelete.do")
		public String delete(Company company,Model model,HttpSession session) {
			company.setCom_id((String)session.getAttribute("comid"));
			com.comDelete(company);
			session.invalidate();
			System.out.println("회원탈퇴");
			model.addAttribute("msg","회원탈퇴 되었습니다");
			model.addAttribute("url","/company/main.do");
			return "util/alert";
		}
		
}
