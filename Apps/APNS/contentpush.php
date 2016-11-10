<?php
//  pushnotis
//
//  Created by julong on 9/14/2559 BE.
//  Copyright © 2559 Eakkasit Tunsakool. All rights reserved.
// 
// token 259a7af63e38c1722156c3df2403677ddcd6f5cfef9a1ea019c76ef162c9364b
// openssl pkcs12 -in WenderCastPush.p12 -out WenderCastPush.pem -nodes -clcerts
$deviceToken = '259a7af63e38c1722156c3df2403677ddcd6f5cfef9a1ea019c76ef162c9364b';
$stream = stream_context_create();
//Pem Certificates.pem
//SSL context options ref.http://php.net/manual/en/context.ssl.php
stream_context_set_option($stream,'ssl','local_cert','iosdeveloperpush.pem');
stream_context_set_option($stream,'ssl','passphrase','');
//Apple Sanbox gateway.sandbox.push.apple.com:2195
/*
https_flags STREAM_CLIENT_CONNECT,STREAM_CLIENT_PERSISTENT
*/
/*
resource stream_socket_client ( 
string $remote_socket 
[, int &$errno [, string &$errstr 
[, float $timeout = ini_get("default_socket_timeout") 
[, int $flags = STREAM_CLIENT_CONNECT 
[, resource $context ]]]]] 
)
*/
$errorno = "errorno";
$APNS = stream_socket_client(
  'ssl://gateway.sandbox.push.apple.com:2195', $errorno,
  $errstr, 60, STREAM_CLIENT_CONNECT|STREAM_CLIENT_PERSISTENT, $stream);
if(!$APNS){
  	exit("Failed $errno $errstr" . PHP_EOL);	    // End of line
	echo 'Connected'.PHP_EOL;	    // End of line
	$content['aps'] = array('content-available' => '1',);
	$content = json_encode($content);
	$data = chr(0) . pack('n', 32) . pack('H*', $deviceToken) . pack('n', strlen($content)) . $content;
	$results = fwrite($APNS, $data, strlen($data));
}
if(!$results){
  echo 'failed'.PHP_EOL;    		// End of line
}else{
  echo 'success'.PHP_EOL; 		    // End of line
}

fclose($APNS);
?>
