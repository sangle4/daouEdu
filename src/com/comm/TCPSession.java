package com.comm;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.Socket;
import java.net.SocketException;
import java.net.UnknownHostException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TCPSession {

	private final Logger log = LoggerFactory.getLogger(this.getClass());
    
    private Socket socket = null;
    private PrintStream os = null;
    private InputStream is = null;
    private int WAIT_TIME = 1800*1000;


    public int getWAIT_TIME() {
        return WAIT_TIME;
    }

    public void setWAIT_TIME(int wait_time) {
        WAIT_TIME = wait_time;
    }

    public int connect(String ip, int port) {

        int retval = 0;
        try {
            socket = new Socket(ip, port);
            
			socket.setSoLinger(true, 5);	
			// Since no data is sent, SO_KEEPALIVE can only test the liveness of the network, not the liveness of service that the socket is connected to.
			socket.setKeepAlive(true);
			// tcp 딜레이 없도록 하겠다. 응답 메시지 오기전에 전송하겠다.
			socket.setTcpNoDelay(true);            

            os = new PrintStream(socket.getOutputStream());
            is = socket.getInputStream();

        } catch (UnknownHostException e) {
            log.debug("connect() UnknownHostException!! ip:["+ip+"], port:["+port+"], errmsg :["+e.getMessage()+"]");
            retval = -1;

        } catch (IOException e) {
            log.debug("connect() IOException!! ip:["+ip+"], port:["+port+"], errmsg :["+e.getMessage()+"]");
            retval = -1;
        }

        if (retval < 0)
            log.debug("TCPSessionCONNECT FAILED");
        else
            log.debug("TCPSession CONNECT OK");

        return retval;
    }

    public void disconnect() {
        try {
        	is.close();
        	os.close();
        	
            if (socket != null && !socket.isClosed())
                socket.close();
        } catch (IOException e) {
            log.debug("disconnect() IOException!! errmsg["+e.getMessage()+"]");
        } finally {
        	try {
	            if (socket != null && !socket.isClosed())
	                socket.close();
	            
	            socket = null;
        	} catch (Exception e) {
        		e.printStackTrace();
        	}
        		
        }

        
        log.debug("Session is closed.");
    }

    private int isConnected() {
        if (socket == null || socket.isClosed()) {
            log.debug("isConnected() session was already disconnected!!");
            return (-1);
        }

        return (0);
    }

    public int send(String string) {
        log.debug("SEND ("+string.getBytes().length+")["+string+"]");

        if (isConnected() < 0)
            return (-1);

        os.print(string);
        os.flush();

        log.debug("TCPSesseion SEND OK!!("+string.getBytes().length+ ") bytes");

        return (0);
    }

    public int recvSize(byte [] rbuff, int offset, int size) {
        int rcv_size = 0;
        int nbytes;

        if (isConnected() < 0)
            return (-1);

        try {
            while (rcv_size < size) {
                socket.setSoTimeout(WAIT_TIME);

                nbytes = is.read(rbuff, offset, size-rcv_size);
                if (nbytes == -1) {
                    log.debug("recv() fail!!");
                    return (-1);
                }
                rcv_size += nbytes;
                offset += nbytes;
            }
        } catch (SocketException e) {
            log.debug("recv() SocketException!! errmsg["+e.getMessage()+"]");
            return (-1);
        } catch (IOException e) {
            log.debug("recv() IOException!! errmsg["+e.getMessage()+"]");
            return (-1);
        }

        if (rcv_size != size) {
            log.debug("recv() 수신한  길이("+rcv_size+")가  size와("+size+")과 다릅니다.");
            return (-1);
        }

        log.debug("TCPSesseion recv OK!!("+size+ ") bytes");
        log.debug("RECV ("+size+")["+(new String(rbuff, 0, size))+"]");

        return (rcv_size);
    }

    public int recvData(byte [] rbuff, int offset, int size) {
        int nbytes;

        if (isConnected() < 0)
            return (-1);

        try {
            nbytes = is.read(rbuff, offset, size);
            if (nbytes == -1) {
                log.debug("recv() fail!!");
                return (-1);
            }
        } catch (SocketException e) {
            log.debug("recv() SocketException!! errmsg["+e.getMessage()+"]");
            return (-1);
        } catch (IOException e) {
            log.debug("recv() IOException!! errmsg["+e.getMessage()+"]");
            return (-1);
        }

        log.debug("TCPSesseion recv OK!!("+nbytes+ ") bytes");
        log.debug("RECV ("+nbytes+")["+(new String(rbuff, 0, nbytes))+"]");

        return (nbytes);
    }
}
