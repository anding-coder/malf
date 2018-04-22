package com.pojo;

public class Goods {

	private int goodsid;
	private String goodsname;
	private float goodsprice;
	private String goodsdesc;
	private String goodspic;
	private int goodscount;
	private int tid;

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public int getGoodsid() {
		return goodsid;
	}

	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}

	public String getGoodsname() {
		return goodsname;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	public float getGoodsprice() {
		return goodsprice;
	}

	public void setGoodsprice(float goodsprice) {
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

	public int getGoodscount() {
		return goodscount;
	}

	public void setGoodscount(int goodscount) {
		this.goodscount = goodscount;
	}

	public int hashCode() {
		return goodsid;
	}

	public boolean equals(Object obj) {

		if (obj instanceof Goods) {
			if (((Goods) (obj)).getGoodsid() == goodsid) {
				return true;
			}
		}

		return false;

	}

}
