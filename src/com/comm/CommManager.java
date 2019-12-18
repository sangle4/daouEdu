package com.comm;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CommManager {
	private final Logger log = LoggerFactory.getLogger(this.getClass());
	
	private Properties prop = new Properties();
	private InputStream is = getClass().getResourceAsStream("/conf/app.properties");
			
	private String SVR_IP = "";
	private int SVR_PORT = 0;
	
	
	public CommManager() {
		try {
			prop.load(is);
			
			this.SVR_IP = prop.get("ip").toString();
			this.SVR_PORT = Integer.valueOf(prop.get("port").toString());
				
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
		
	private Comm_hd makeComm_hd(String sessionId, String apiName, String data) {
		Comm_hd comm_hd;
		
		comm_hd = new Comm_hd(sessionId);
		comm_hd.setData(data);
		comm_hd.setSize(Comm_hd.Length+data.getBytes().length);
		comm_hd.setSvcId(apiName);
		comm_hd.setErrno(0);
		
		return comm_hd;
	}
	
	public int call(String sessionId, String apiName, String data, byte []output) {
		
		if ("".equals(SVR_IP)) return (-1);
		
		int data_len = 0;
		Comm_hd comm_hd;
		byte []hd_buff = new byte[Comm_hd.Length+1];
		 
		TCPSession session = new TCPSession();

		try {
	        if (session.connect(SVR_IP, SVR_PORT) < 0) {
				return (-1);	
			}
	        
	        comm_hd = makeComm_hd(sessionId, apiName, data);
			comm_hd.debug();
			
			if ((session.send(comm_hd.toString()+data)) < 0) {
				return -1;
			}
			
			log.debug("Call() ok!!");
			
			if ((session.recvSize(hd_buff, 0, Comm_hd.Length)) < 0) {
				return -1;
			}
			
			if (comm_hd.byteTo(hd_buff, 0, Comm_hd.Length) < 0) {
				return -1;
			}
			
			data_len = comm_hd.getSize() - Comm_hd.Length; // 공통 헤더 + data 길이 셋
			
			if (session.recvSize(output, 0, data_len) < 0) {
				return -1;
			}
			System.out.println("out["+new String(output)+"]");
			log.debug("Receive() ok!!");
			
			comm_hd.setData(output, 0, data_len);
			comm_hd.debug();
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			session.disconnect();
		}
		
		return (data_len);
	}
}
