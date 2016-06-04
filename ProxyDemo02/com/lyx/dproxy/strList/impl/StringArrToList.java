package com.lyx.dproxy.strList.impl;

import java.util.ArrayList;
import java.util.List;

import com.lyx.dproxy.strList.parseGeneralToList;

/**
 * String 的转换实现类
 * @author Administrator
 *
 */
public class StringArrToList implements parseGeneralToList {

	@Override
	public List<Object> parseArrToList(Object[] t) {
		List<Object> result = new ArrayList<Object>();
		String[] str = (String[]) t;
		if(str != null && str.length > 0){
			for(String s : str){
				result.add(s);
			}
		}
		return result;
	}

}
