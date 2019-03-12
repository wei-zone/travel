package com.trav.cms.banner.dao;

import java.io.IOException;
import java.util.List;

import com.trav.cms.banner.domain.Banner;



public interface BanOper {


		public List<Banner> listAll();
		public boolean addBan(Banner banner) throws IOException;
		public boolean delBan(int banid);
		public boolean editBan(Banner banner);
		
		/*查找*/
		public Banner findPicByName(String picname);

		
		/*获取总的个数*/
		public int getCount();
	
}
