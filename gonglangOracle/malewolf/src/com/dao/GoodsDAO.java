package com.dao;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;

import com.pojo.Collection;
import com.pojo.Goods;
import com.util.DButil;

public class GoodsDAO {
	
	//换一批看看
	public List<Goods> findSameType(BigDecimal tid) {
		String sql = "select count(*) from goods where tid = ?";
		int count = (int) DButil.uniqueQuery(sql, tid);
		//sql = "select * from goods where tid = ?";
		//MySQL随即查询语句
		//sql="select  *  from goods where tid = ? order by rand() limit 2";
		//Oracle随机查询语句
		sql="select  *  from (select * from goods order by sys_guid()) where tid = ? and rownum <3";
		List<Goods> list = DButil.query(Goods.class, sql, tid);
		return list;
	}
    //主界面显示所有商品查询
	public List<Goods> findall() {
		String sql = "select goodsid , goodsname , goodsprice , goodspic , goodsdesc , goodscount from goods ";
		List<Goods> goods = DButil.query(Goods.class, sql);
		return goods;
	}
   //根据商品ID查询商品所有信息
	public Goods findbyid(String goodsid) {
		String sql = "select goodsid , goodsname , goodsprice , goodspic , goodsdesc , goodscount,tid from goods where goodsid = ?";
		List<Goods> goods = DButil.query(Goods.class, sql, goodsid);
		if (goods.size() > 0) {
			return goods.get(0);
		}
		return null;
	}

	// 判断用户是否收藏
	public Collection checkCollection(String username, String goodsid) {

		String sql = "select goodsid, username from collection where goodsid =? and username = ? ";
		List<Collection> collections = DButil.query(Collection.class, sql,
				goodsid, username);
		if (collections.size() > 0) {
			return collections.get(0);
		}
		return null;

	}

	// 收藏
	public int addCollection(String username, String goodsid) {
		String sql = "insert into collection(username , goodsid) values(?,?)";
		int n =DButil.zsg(sql, username, goodsid);
		return n;
	}
	
	//加入购物车
	public int addcart(int goodsid,String goodsname,int goodsnum,String goodsprice,String goodspic){
		String sql="insert into cart(goodsid,goodsnum,goodsname,goodsprice,goodspic) values(?,?)";
		int n=DButil.zsg(sql,goodsid,goodsnum,goodsname,goodsprice,goodspic);
		return n;
	}

}
