package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.PaymentDAO;
import mvc.dto.Payment;

@Service
public class PayServiceImpl implements PayService{
	
	@Autowired PaymentDAO dao;

	@Override
	public List getPayList() {
		return dao.getPayList();
	}

	@Override
	public void insertPay(Payment payment) {
		dao.insertPay(payment);
	}

	@Override
	public void deletePay() {
		dao.deletePay();
	}

	@Override
	public void completePay() {
		dao.completePay();
	}

	@Override
	public void refundPay() {
		dao.refundPay();
	}

}
