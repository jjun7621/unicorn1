package com.human.unicorn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.unicorn.dao.PaymentDAO;
import com.human.unicorn.dto.PaymentDTO;

@Service
public class PaymentServiceImpl implements PaymentService {

	
	@Autowired
	PaymentDAO paymentDAO;
	


	@Override
	public List PaymentList() {
		 System.out.println("Service check");
		 List paymentList = paymentDAO.PaymentList();
		return paymentList;
	}




	
}
