package mvc.dao;

import java.util.List;

import mvc.dto.Payment;

public interface PaymentDao {
	
	public List getPayList();
	
	public void insertPay(Payment payment);
	
	public void deletePay();
	
	public void completePay();
	
	public void refundPay(Payment payment);

	public Payment getPayInfo(int meeting_no);
	
}
