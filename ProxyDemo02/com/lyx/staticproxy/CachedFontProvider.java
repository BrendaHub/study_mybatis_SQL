package com.lyx.staticproxy;

import java.awt.Font;
import java.util.HashMap;
import java.util.Map;

public class CachedFontProvider implements FontProvider {

	private FontProvider fontProvider;
	private Map<String, Font> cached;
	
	public CachedFontProvider(FontProvider fontProvider){
		this.fontProvider = fontProvider;
	}
	
	public Font getFont(String name){
		Font font = cached.get(name);
		if(font == null){
			font = fontProvider.getFont(name);
			cached.put(name, font);
		}
		return font;
	}

}
