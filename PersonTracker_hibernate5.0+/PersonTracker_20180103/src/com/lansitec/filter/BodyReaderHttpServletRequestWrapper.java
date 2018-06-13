package com.lansitec.filter;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;

import javax.servlet.ReadListener;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;


public class BodyReaderHttpServletRequestWrapper extends HttpServletRequestWrapper {
	private final byte[] body;
	public BodyReaderHttpServletRequestWrapper(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {
		super(request);
		body = SaveRequestStream.saveStream(request).getBytes(Charset.forName("UTF-8"));
	}
    
	    @Override
	    public BufferedReader getReader() throws IOException {
	        return new BufferedReader(new InputStreamReader(getInputStream()));
	    }

	    @Override
	    public ServletInputStream getInputStream() throws IOException {

	        final ByteArrayInputStream bais = new ByteArrayInputStream(body);

	        return new ServletInputStream() {

	            @Override
	            public int read() throws IOException {
	                return bais.read();
	            }

	            @Override
	            public boolean isFinished() {
	                return false;
	            }

	            @Override
	            public boolean isReady() {
	                return false;
	            }

	            @Override
	            public void setReadListener(ReadListener readListener) {

	            }

	        };
	    }
	
}
