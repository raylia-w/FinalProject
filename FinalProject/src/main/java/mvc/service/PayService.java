package mvc.service;

import java.util.List;

import mvc.dto.Payment;


public interface PayService {
	
	public List getPayList();
	
	public void insertPay(Payment p);
	
	public void deletePay();
	
	public void completePay();
	
	public void refundPay();
	
}
