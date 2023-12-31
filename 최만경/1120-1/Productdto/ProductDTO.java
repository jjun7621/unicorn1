package com.human.unicorn.Productdto;

import java.sql.Date;

public class ProductDTO {

	private int productNo;
	private String ProductName;
	private String ProductEx;
	private String mainImg1;
	private String mainImg2;
	private String mainImg3;
	private String fabric;
	private String company;
	private int popularity;
	private Integer productPrice;
	
	
	
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		ProductName = productName;
	}
	public String getProductEx() {
		return ProductEx;
	}
	public void setProductEx(String productEx) {
		ProductEx = productEx;
	}
	public String getMainImg1() {
		return mainImg1;
	}
	public void setMainImg1(String mainImg1) {
		this.mainImg1 = mainImg1;
	}
	public String getMainImg2() {
		return mainImg2;
	}
	public void setMainImg2(String mainImg2) {
		this.mainImg2 = mainImg2;
	}
	public String getMainImg3() {
		return mainImg3;
	}
	public void setMainImg3(String mainImg3) {
		this.mainImg3 = mainImg3;
	}
	public String getFabric() {
		return fabric;
	}
	public void setFabric(String fabric) {
		this.fabric = fabric;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public Integer getPopularity() {
	    return popularity;
	}

	public void setPopularity(Integer popularity) {
	    this.popularity = popularity;
	}

	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	@Override
	public String toString() {
		return "ProductDTO [productNo=" + productNo + ", ProductName=" + ProductName + ", ProductEx=" + ProductEx
				+ ", mainImg1=" + mainImg1 + ", mainImg2=" + mainImg2 + ", mainImg3=" + mainImg3 + ", fabric=" + fabric
				+ ", company=" + company + ", popularity=" + popularity + ", productPrice=" + productPrice + "]";
	}
	
	
	
	

}
