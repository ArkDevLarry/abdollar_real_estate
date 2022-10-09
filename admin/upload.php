<?php

include 'connect/connect.php';



        $name = check_input($_POST['name']);
        $location = check_input($_POST['location']);
        $price = empty(check_input($_POST['price'])) ? 0 : check_input($_POST['price']);
        $status = check_input($_POST['status']);
        $title = check_input($_POST['title']);
        $details = check_input($_POST['details']);
        $code = rand();
        $created = date('Y-m-d H:i:s');
        $feat = $_POST['features'];
        $arrdee = array();
        //Multiple image insert query.

        foreach ($feat as $value) {
            $cc = check_input($value);
            array_push($arrdee, $value);
        }

        if (empty($name)) {
            echo "<div class='error-txt'>You need to fill in Property Name!!</div>";
        }elseif (empty($location)) {
            echo "<div class='error-txt'>Please specify Property Location!!</div>";
        }elseif (empty($status)) {
            echo "<div class='error-txt'>Provide current status of the product!!<br> e.g Still Selling.</div>";
        }elseif (empty($title)) {
            echo "<div class='error-txt'>Please specify Property Certification.</div>";
        }elseif (empty($details)) {
            echo "<div class='error-txt'>Write something captivating about this Property.</div>";
        }elseif ($_FILES['images']['name'][0]==='') {
            echo "<div class='error-txt'>You have not selected any image. PNG, JPEG, JPG are allowed.</div>";
        }else {
            $sql = dbConnect()->prepare("SELECT name FROM products WHERE name=? AND name LIKE '$name%'");
            $sql->execute([$name]);
            if ($sql->rowcount() > 0) {
                echo "<div class='error-txt'>There is a Property with similar name.!!!</div>";
            }else {
                $allow = array('jpeg','png','jpg');
                $err = array("");
                $arr = array("");
                foreach ($_FILES['images']['name'] as $i => $value) {
                    $mainImage = $value;
                    $source = $_FILES['images']['tmp_name'][$i];
                    $error = $_FILES['images']['error'][$i];
                    $size = $_FILES['images']['size'][$i];
                    $type = $_FILES['images']['type'][$i];
                    $fileExt = explode('.',$mainImage);
                    $mainExt = strtolower(end($fileExt));
                    if (in_array($mainExt, $allow)) {
                        if ($error === 0) {
                            if ($size < 2000000) {
                                $newName = time() . rand() . "." . $mainExt;
                                $destination = 'uploads/'.$newName;
                                if (move_uploaded_file($source,$destination)) {
                                    array_push($err, 'true');
                                    array_push($arr, $newName);
                                }else {
                                    array_push($err, 'false');
                                }
                            }else {
                                echo "<div class='error-txt'>File cannot be more than 1.5mb!!!</div>";
                            }
                        }else {    
                            echo "<div class='error-txt'>An error occured during file transmission try uploading them again!!!</div>";
                        }
                    }else {
                        echo "<div class='error-txt'>A file has a prohibited format. only JPEG, PNG, JPG allowed!!!</div>";
                    }
                }
                if (!in_array('false', $err)) {
                    $cO = dbConnect()->prepare("INSERT INTO products SET name=?, location=?, price=?, status=?, title=?, code=?, details=?, created=?");
                    if ($cO->execute([$name,$location,$price,$status,$title,$code,$details,$created])) {
                        foreach ($arr as $value) {
                            //Call $ima query here.
                            if (!empty($value)) {
                                $ima = dbConnect()->prepare("INSERT INTO images SET image=?, code=?");
                                if ($ima->execute([$value,$code])) {
                                    array_push($err, 'true');
                                }else {
                                    array_push($err, 'false');
                                }
                            }else {
                                
                            }
                        }
                        if (!in_array('false', $err)) {
                            // echo "success";
                            foreach ($arrdee as $v) {
                                $f = dbConnect()->prepare("INSERT INTO features SET feature=?, code=?");
                                $f->execute([$v,$code]);
                            }
                            if ($f) {
                                echo "success";
                            }
                        }
                        
                    }
                }else {
                    echo "<div class='error-txt'>There was a problem uploading some files<br>Please check the files and try again!!</div>";
                }
            }
        }
?>