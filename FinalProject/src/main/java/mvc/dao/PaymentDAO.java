package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface PaymentDAO {
	
	public List getPayList();
	
	public void insertPay();
	
	public void deletePay();
	
	public void completePay();
	
	public void refundPay();
	
}
