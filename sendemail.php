<?php

// Define some constants
define( "RECIPIENT_NAME", "Abdollar Homes" );
define( "RECIPIENT_EMAIL", "info@abdollarhomes.com" );


// Read the form values
$success = false;
$userName = isset( $_POST['username'] ) ? preg_replace( "/[^\.\-\' a-zA-Z0-9]/", "", $_POST['username'] ) : "";
$senderEmail = isset( $_POST['email'] ) ? preg_replace( "/[^\.\-\_\@a-zA-Z0-9]/", "", $_POST['email'] ) : "";
$senderSubject = isset( $_POST['subject'] ) ? preg_replace( "/[^\.\-\_\@a-zA-Z0-9]/", "", $_POST['subject'] ) : "";
$message = isset( $_POST['message'] ) ? preg_replace( "/(From:|To:|BCC:|CC:|Subject:|Content-Type:)/", "", $_POST['message'] ) : "";

// If all values exist, send the email
if ( $userName && $senderEmail && $senderSubject && $message) {
  $recipient = RECIPIENT_NAME . " <" . RECIPIENT_EMAIL . ">";
  $headers = "From: " . $userName . "";
  $msgBody = " Email: ". $senderEmail .  " Subject: ". $senderSubject .  " Message: " . $message . "";
  $success = mail( $recipient, $headers, $msgBody );

  //Set Location After Successsfull Submission
  //header('Location: contact.html?message=Successfull');
  $msg="Thank you for contacting Abdollar Homes. We would get back to you shortly.";
  echo"<script>alert('$msg');window.location='contact'</script> ";
}

else{
	//Set Location After Unsuccesssfull Submission
  	//header('Location: indexl?message=Failed');	
        $msg="Oops! Operation failed.";
        echo"<script>alert('$msg');window.location='contact'</script> ";
}

?>