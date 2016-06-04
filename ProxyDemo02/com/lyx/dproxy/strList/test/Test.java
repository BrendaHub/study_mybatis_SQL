package com.lyx.dproxy.strList.test;

import java.util.List;

import com.lyx.dproxy.strList.parseGeneralToList;
import com.lyx.dproxy.strList.handler.ParseHandler;
import com.lyx.dproxy.strList.impl.IntegerArrToList;
import com.lyx.dproxy.strList.impl.StringArrToList;

public class Test {

	public static void main(String[] args) {
		ParseHandler phandler = new ParseHandler();
		parseGeneralToList pgtl = (parseGeneralToList)phandler.bind(new StringArrToList());
		String[] arr = new String[]{"aaa","bbb"};
		List<Object> list = pgtl.parseArrToList(arr);
		System.out.println(list);
		  
		parseGeneralToList pgtl1 = (parseGeneralToList)phandler.bind(new IntegerArrToList());
		Integer[] ints = new Integer[]{23,43,232,22,11};
		List<Object> list1 = pgtl1.parseArrToList(ints);
		System.out.println(list1);
		
		parseGeneralToList pgtl2 = (parseGeneralToList)phandler.bind(new IntegerArrToList());
		Integer[] ints1 = new Integer[]{23,43,232,22,11};
		List<Object> list2 = pgtl2.parseArrToList(ints1);
		System.out.println(list2);
	}
}
