package com.pojo;

import java.math.BigDecimal;

public class Goods {

	private BigDecimal goodsid;   //int
	private String goodsname;
	private BigDecimal goodsprice; //float
	private String goodsdesc;
	private String goodspic;
	private BigDecimal goodscount;  //int
	private BigDecimal tid;  //int
	
	
	public BigDecimal getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(BigDecimal goodsid) {
		this.goodsid = goodsid;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public BigDecimal getGoodsprice() {
		return goodsprice;
	}
	public void setGoodsprice(BigDecimal goodsprice) {
		this.goodsprice = goodsprice;
	}
	public String getGoodsdesc() {
		return goodsdesc;
	}
	public void setGoodsdesc(String goodsdesc) {
		this.goodsdesc = goodsdesc;
	}
	public String getGoodspic() {
		return goodspic;
	}
	public void setGoodspic(String goodspic) {
		this.goodspic = goodspic;
	}
	public BigDecimal getGoodscount() {
		return goodscount;
	}
	public void setGoodscount(BigDecimal goodscount) {
		this.goodscount = goodscount;
	}
	public BigDecimal getTid() {
		return tid;
	}
	public void setTid(BigDecimal tid) {
		this.tid = tid;
	}
	
	
	
}
