package com.lansitec.util;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;

public class JsonDateTypeConvert extends JsonSerializer<Date> {

	@Override
	public void serialize(Date date, JsonGenerator jsonGenerator, SerializerProvider arg2)
			throws IOException, JsonProcessingException {
		//��������ת������
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//ת������Ϊָ����ʽ���ַ���
		String dateStr = sdf.format(date);
		//��json��ʽ����ַ���
		jsonGenerator.writeString(dateStr);
		
	}

}
