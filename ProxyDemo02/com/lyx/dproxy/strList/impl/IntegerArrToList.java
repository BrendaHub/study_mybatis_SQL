package com.lyx.dproxy.strList.impl;

import java.util.ArrayList;
import java.util.List;

import com.lyx.dproxy.strList.parseGeneralToList;

public class IntegerArrToList implements parseGeneralToList {

	@Override
	public List<Object> parseArrToList(Object[] t) {
		List<Object> result = new ArrayList<Object>();
		Integer[] str = (Integer[]) t;
		if(str != null && str.length > 0){
			for(Integer s : str){
				result.add(s);
			}
		}
		return result;
	}

}
