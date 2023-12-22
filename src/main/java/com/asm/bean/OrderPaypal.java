package com.asm.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class OrderPaypal {

	private double price;
	private String currency;
	private String method;
	private String intent;
	private String description;

}
