/*
*	This web site is education project for Daou KIWOOM ITS.
*/
CUST_ID : ONLY NUMBER

q5 : add input cust_id field to find data

receive default : ADD variable "err_code"
err_code - success : 0
		   error : -1
		   error code : 1403(ex code) 
err_msg : "message"

if input more than 200,000 need to fix error