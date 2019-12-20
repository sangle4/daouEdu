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

FIX :
q6 : send order_id to click action '20more' -> fixed
q1, q4 if search cust_id over 200,000 -> no data but cust_id table filled, need to fix -> fixed
q2 : when search end of the table data, 
if push search button again it takes one more data end of the table -> fixed
q3 : when search null cust_id, get 2 times of error alert -> fixed