package com.carDealership.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.carDealership.entity.Buyer;



@Service
public class BuyerService {
	static ArrayList<Buyer> buyers = new ArrayList<Buyer>();
	
	public void addNewBuyer(Buyer buyer) {
		buyers.add(buyer);
	}
	
	public  Buyer findByEmail(String email) {
		Buyer buyer = null;
		for(Buyer buyr:buyers) {
			 buyer = buyr.getEmail().equalsIgnoreCase(email)?buyr:null;
		}
		return buyer;
	}
}
