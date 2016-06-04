package com.lyx.staticproxy;

/**
 * 字体提供工厂抽象类
 */
public abstract class ProviderFactory {

	public static FontProvider getFontProvider(){
		return new FontProviderFromDisk();
	}
}
