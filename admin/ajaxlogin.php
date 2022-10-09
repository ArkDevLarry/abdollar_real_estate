<?php
include_once 'connect/connect.php';

    $em=$_POST['email'];
    $pwd = check_input($_POST["password"]);
    if(empty($em)){
        echo  "<div class='error-txt2'>Please fill in your email!.</div>";
    }elseif ((!preg_match("/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,})$/i", $em))){
        echo  "<div class='error-txt2'>You have entered invalid email!.</div>";
    }elseif(empty($pwd)){
        echo  "<div class='error-txt2'>Password is required!.</div>";
	}else{
        $em = check_input($_POST["email"]);
        $pwd = check_input($_POST["password"]);

        $que= dbConnect()->prepare("SELECT * FROM users WHERE email=:email");
        $que->bindParam(':email', $em);
        $que->execute();
        if($row=$que->fetch()){

            $phash=$row['password'];
            $password = md5($pwd);
            
            
            if($password === $phash){
                $_SESSION["uemail"] = $row['email'];
                echo "<div class='success-txt'>Success, redirecting to your account.</div>";
            }else{  
                echo "<div class='error-txt2'>Incorrect password!</div>";
            }
        }
        else{
            echo "<div class='error-txt2'>This account does not exist on our server!</div>";
        }
    }
?>
