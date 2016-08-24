package com.niit.shopping.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Cart implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 9102351367652284742L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long cart_id;
	
	
	
	private double totalamount;
	
	@ManyToOne
	@JoinColumn(name="product_id",insertable=false, updatable=false)
	private ProductDetails productDetails;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="user_id")
	private UserDetails userDetails;

	public long getCart_id() {
		return cart_id;
	}

	public void setCart_id(long cart_id) {
		this.cart_id = cart_id;
	}

	
	public double getTotalamount() {
		return totalamount;
	}

	public void setTotalamount(double totalamount) {
		this.totalamount = totalamount;
	}
	
}
