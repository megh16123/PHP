<?php
$room = $_POST['room'];

if(strlen($room)>20 or strlen($room)<2){
    $message = "Plase enter a valid room name";
    echo "<script language='javascript'>";
    echo "alert('$message');";
    echo "window.location = 'http://localhost/CR';";
    echo "</script>";

}
elseif(ctype_alpha($room)){
    $message = "Plase enter a valid room name";
    echo "<script language='javascript'>";
    echo "alert('$message');";
    echo "window.location = 'http://localhost/CR';";
    echo "</script>";
}
else{
    include "db_connect.php";
    $sql = "SELECT * FROM `rooms` WHERE roomname = '$room' ;";
    $result = mysqli_query($conn,$sql);
   if($result){
       
        if(mysqli_num_rows($result)>0){
            $message = "room already exists!!!";
            echo "<script language='javascript'>";
            echo "alert('$message');";
            echo "window.location = 'http://localhost/CR';";
            echo "</script>";
        }
    
    else{
        $sql ="INSERT INTO `rooms` (`roomname`, `stime`) VALUES ('$room', current_timestamp());";
        $result = mysqli_query($conn,$sql);
        if($result){
           
            $msg = "Your room is ready";
            echo "<script language='javascript'>";
            echo "alert('$msg');";
            echo 'window.location ="http://localhost/CR/rooms.php?roomname='.$room.'";';
            echo "</script>";

        }
    
    
    }
     
        
    }
}

?>