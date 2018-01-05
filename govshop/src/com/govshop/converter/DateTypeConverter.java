package com.govshop.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Map;
import org.apache.struts2.util.StrutsTypeConverter;
import com.opensymphony.xwork2.conversion.TypeConversionException;

public class DateTypeConverter extends StrutsTypeConverter {
	//定义日期格式
	private static SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
	//使用指定的日期格式解析字符串值，返回Date对象
	@Override
	public Object convertFromString(Map context, String[] values, Class toClass) {
		try {			
			return sf.parse(values[0]);
		} catch (ParseException e) {
			// 当解析出现异常时，抛出TypeConversionException异常，以通知Struts 2发生了转换错误
			throw new TypeConversionException(e.getMessage() + " [" + values + " - class: " + toClass + "]");
		}
	}
	//使用指定的日期格式格式化Date对象，返回字符串
	@Override
	public String convertToString(Map context, Object o) {		
		return sf.format(o);
	}
}
