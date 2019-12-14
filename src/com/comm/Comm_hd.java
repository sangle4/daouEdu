package com.comm;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fw.FW_struct;
import com.fw.FormatString;

public class Comm_hd extends FW_struct {
	private final Logger log = LoggerFactory.getLogger(this.getClass());

	public final static int LEN_SIZE = 6;
	public final static int LEN_PORT = 5; // 00000
	public final static int LEN_SESSION_ID = 64;
	public final static int LEN_SVC_ID = 64;
	public final static int LEN_ERRNO = 4;

	public final static int Length = LEN_SIZE + LEN_PORT + LEN_SESSION_ID + LEN_SVC_ID + LEN_ERRNO ;

	private int size = 0;
	private int port = 0;
	private String sessionId = "";
	private String data = "";
	private String svcId = "";
	private int errno = 0;
	
	public Comm_hd(String sessionId) {
		this.sessionId = sessionId;
		this.port = 00000;
	}
	
	@Override
	protected int byteTo(byte[] buff, int off) {
		return 0;
	}

	public int byteTo(byte []buff, int off, int len) {
		int pos = off;
		
		if (len < Length) {
			log.debug("byte array size("+len+")가 Comm_hd 사이즈("+Length+"보다 작습니다.");
			return (-1);
		}
		
		this.size = Integer.parseInt(new String(buff, pos, LEN_SIZE));
		pos += LEN_SIZE;
		
		this.port = Integer.parseInt(new String(buff, pos, LEN_PORT));
		pos += LEN_PORT;

		this.sessionId = new String(buff, pos, LEN_SESSION_ID);
		pos += LEN_SESSION_ID;
		
		this.svcId = new String(buff, pos, LEN_SVC_ID);
		pos += LEN_SVC_ID;
		
		this.errno =  Integer.parseInt(new String(buff, pos, LEN_ERRNO));
		pos += LEN_ERRNO;
		
		
		return 0;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		FormatString fs = new FormatString();

		sb.append(fs.format("9", LEN_SIZE,       Integer.toString(size)));
		sb.append(fs.format("9", LEN_PORT,       Integer.toString(port)));
		sb.append(fs.format("X", LEN_SESSION_ID, sessionId));
		sb.append(fs.format("X", LEN_SVC_ID, svcId));
		sb.append(fs.format("9", LEN_ERRNO,       Integer.toString(errno)));
		

		return (sb.toString());
	}

	@Override
	public int debug() {
		FormatString fs = new FormatString();
		
		log.debug("<Session_Header>---------------------------------start");
		log.debug("size      : [" + fs.format("9", LEN_SIZE,       Integer.toString(size)) + "]");
		log.debug("port      : [" + fs.format("9", LEN_PORT,       Integer.toString(port)) + "]");
		log.debug("sessionId : [" + fs.format("X", LEN_SESSION_ID, sessionId) + "]");
		log.debug("svcId : [" + fs.format("X", LEN_SVC_ID, svcId) + "]");
		log.debug("errno      : [" + fs.format("9", LEN_ERRNO,       Integer.toString(errno)) + "]");
		log.debug("<Session_Header>---------------------------------End");

        return 0;
	}

	public int getSize() {
		return size;
	}
	
	public void setSize(int size) {
		this.size = size;
	}

	public int getPort() {
		return port;
	}

	public void setPort(int port) {
		this.port = port;
	}

	public String getSessionId() {
		return sessionId;
	}

	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}
	
	public String getSvcId() {
		return svcId;
	}

	public void setSvcId(String svcId) {
		this.svcId = svcId;
	}

	public int getErrno() {
		return errno;
	}

	public void setErrno(int errno) {
		this.errno = errno;
	}
	

	public String getData() {
		return data;
	}	

	public void setData(String data) {
		this.data = data;
	}
	
	public void setData(byte [] data, int pos, int length) {
		this.data = new String(data, pos, length);
		//setLen(LEN_COMM_HD+data.getBytes().length);
	}

}
