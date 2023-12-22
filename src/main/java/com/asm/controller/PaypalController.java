package com.asm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.asm.bean.OrderPaypal;
import com.asm.service.PaypalService;
import com.asm.service.ProductService;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;

@Controller
public class PaypalController {

	@Autowired
	PaypalService service;
	@Autowired
	ProductService pService;

	public static final String SUCCESS_URL = "palpay/success";
	public static final String CANCEL_URL = "palpay/cancel";

	@GetMapping("/palpay")
	public String home() {
		try {
			Payment payment = service.createPayment(0.12, "USD", "PAYPAL",
					"sale", "nhattan2k3gl@gmail.com", "http://localhost:8888/" + CANCEL_URL,
					"http://localhost:8888/" + SUCCESS_URL);
			for(Links link:payment.getLinks()) {
				if(link.getRel().equals("approval_url")) {
					return "redirect:"+link.getHref();
				}
			}
			
		} catch (PayPalRESTException e) {
		
			e.printStackTrace();
		}
		return "home/index";
	}
	
	@GetMapping(value = CANCEL_URL)
    public String cancelPay(Model model) {
		model.addAttribute("db", pService.findProductByCreateDateDESC());
		return "home/index";
    }

    @GetMapping(value = SUCCESS_URL)
    public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId,Model model) {
        try {
            Payment payment = service.executePayment(paymentId, payerId);
            System.out.println(payment.toJSON());
            if (payment.getState().equals("approved")) {
            	model.addAttribute("db", pService.findProductByCreateDateDESC());
                return "home/index";
            }
        } catch (PayPalRESTException e) {
         System.out.println(e.getMessage());
        }
        model.addAttribute("db", pService.findProductByCreateDateDESC());
        return "home/index";
    }
}
