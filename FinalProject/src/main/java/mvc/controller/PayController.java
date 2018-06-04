package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mvc.service.PayService;

@Controller
public class PayController {
	
	@Autowired PayService payService;

	@RequestMapping(value="/pay.do", method=RequestMethod.GET)
	public String payAPI() {
		return "group/manager/pay";
	}
	
	@RequestMapping(value="/pay.do", method=RequestMethod.POST)
	public void payAPIProc() {
		payService.insertPay();
	}
	
	@RequestMapping(value="/pay/refund.do")
	public void refund() {
		payService.refundPay();
	}
	
	@RequestMapping(value="/pay/complete.do")
	public void payComplete() {
		payService.completePay();
	}
	
}
