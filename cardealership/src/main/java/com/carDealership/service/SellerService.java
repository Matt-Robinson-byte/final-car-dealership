package com.carDealership.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.carDealership.entity.Seller;


@Service
public class SellerService {
	
static ArrayList<Seller> sellers = new ArrayList<Seller>();


	public void saveSeller(Seller seller) {
		sellers.add(seller);
	}
	
	public Seller findByEmail(String email) {
		Seller seller = null;
		for(Seller vendor:sellers) {
			 seller = vendor.getEmail().equalsIgnoreCase(email)?vendor:null;
		}
		return seller;
	}
	public Seller findByUsername(String username) {
		Seller seller = null;
		for(Seller vendor:sellers) {
			 seller = vendor.getUsername().equalsIgnoreCase(username)?vendor:null;
		}
		return seller;
	}
	public ArrayList<Seller> displayAll(){
		return sellers;
	}
	
}

