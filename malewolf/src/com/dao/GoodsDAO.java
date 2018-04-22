package com.dao;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;

import com.pojo.Collection;
import com.pojo.Goods;
import com.util.DButil;

public class GoodsDAO {
	
	//��һ������
	public List<Goods> findSameType(BigDecimal tid) {
		String sql = "select count(*) from goods where tid = ?";
		int count = (int) DButil.uniqueQuery(sql, tid);
		//sql = "select * from goods where tid = ?";
		//MySQL�漴��ѯ���
		//sql="select  *  from goods where tid = ? order by rand() limit 2";
		//Oracle�����ѯ���
		sql="select  *  from (select * from goods order by sys_guid()) where tid = ? and rownum <3";
		List<Goods> list = DButil.query(Goods.class, sql, tid);
		return list;
	}
    //��������ʾ������Ʒ��ѯ
	public List<Goods> findall() {
		String sql = "select goodsid , goodsname , goodsprice , goodspic , goodsdesc , goodscount from goods ";
		List<Goods> goods = DButil.query(Goods.class, sql);
		return goods;
	}
   //������ƷID��ѯ��Ʒ������Ϣ
	public Goods findbyid(String goodsid) {
		String sql = "select goodsid , goodsname , goodsprice , goodspic , goodsdesc , goodscount,tid from goods where goodsid = ?";
		List<Goods> goods = DButil.query(Goods.class, sql, goodsid);
		if (goods.size() > 0) {
			return goods.get(0);
		}
		return null;
	}

	// �ж��û��Ƿ��ղ�
	public Collection checkCollection(String username, String goodsid) {

		String sql = "select goodsid, username from collection where goodsid =? and username = ? ";
		List<Collection> collections = DButil.query(Collection.class, sql,
				goodsid, username);
		if (collections.size() > 0) {
			return collections.get(0);
		}
		return null;

	}

	// �ղ�
	public int addCollection(String username, String goodsid) {
		String sql = "insert into collection(username , goodsid) values(?,?)";
		int n =DButil.zsg(sql, username, goodsid);
		return n;
	}
	
	//���빺�ﳵ
	public int addcart(int goodsid,String goodsname,int goodsnum,String goodsprice,String goodspic){
		String sql="insert into cart(goodsid,goodsnum,goodsname,goodsprice,goodspic) values(?,?)";
		int n=DButil.zsg(sql,goodsid,goodsnum,goodsname,goodsprice,goodspic);
		return n;
	}

}
