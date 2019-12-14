package com.api;

import java.io.UnsupportedEncodingException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.comm.CommManager;
import com.fw.MetaData;



public class ApiCommCall {

	private final Logger log = LoggerFactory.getLogger(ApiCommCall.class.getName());

	private String sessionId = "test";
	private String jsonOutStr = "";
	
	private String apiName = "internApi";
	
	public String getOutputJsonStr() {
		return jsonOutStr; 	
	}

	public int call(String inputStr) {

		int rlen; 
		byte [] output = new byte[MetaData.BYTE_MAX];

		CommManager cm = new CommManager();
		
		log.debug("jsonInputStr: ["+inputStr+"]");
		
		
		if ((rlen = cm.call(sessionId, apiName, inputStr, output)) < 0) { 
			return -1;
		}
		log.debug("SendCall() OK!!!");
		
				
		try {
			jsonOutStr = new String (output, 0, rlen, "UTF-8"); //바이트를 스트링으로 변환할때 UTF-8로 인코딩
			log.debug("jsonOutStr: "+jsonOutStr);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
	}

	public String getApiName() {
		return apiName;
	}

	public void setApiName(String apiName) {
		this.apiName = apiName;
	}
	
}
