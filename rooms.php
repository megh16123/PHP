<?php
$roomname = $_GET['roomname'];
include "db_connect.php";

$sql = "SELECT * FROM `rooms` WHERE roomname = '$roomname'; ";
$result = mysqli_query($conn,$sql);

if($result){
   if(mysqli_num_rows($result)==0){
    $message = "this room doesn't exists";
    echo "<script language='javascript'>";
    echo "alert('$message');";
    echo "window.location = 'http://localhost/CR';";
    echo "</script>";
   }
   else{

   }
}
else{
    echo "ERROR: ".mysqli_error($result);
}

?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<link rel="apple-touch-icon" href="/docs/5.0/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="img/icon/love-chat-icon-bw-114-308328.png">
<meta name="theme-color" content="#7952b3">

<style>
body {
  margin: 0 auto;
  max-width: 800px;
  padding: 0 20px;
}

.container {
  border: 2px solid #dedede;
  background-color: #ffff;
  padding: 10px;
  margin: 10px 0;
  border-radius: 20px;
}

.darker {
  border-color: #ccc;
  background-color: #ddd;
}

.container::after {
  content: "";
  clear: both;
  display: table;
}

.container img {
  float: left;
  max-width: 60px;
  width: 100%;
  margin-right: 20px;
  border-radius: 50%;
}

.container img.right {
  float: right;
  margin-left: 20px;
  margin-right:0;
}

.time-right {
  float: right;
  color: white;
}

.time-left {
  float: left;
  color: #999;
}
.anyClass{
  height: 350px;
  overflow-y: scroll;

}
</style>
</head>
<body>
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
<header class="mb-auto">
    <div>
      <h3 class="float-md-start mb-0">Cover</h3>
      <nav class="nav nav-masthead justify-content-center float-md-end">
        <a class="nav-link active" aria-current="page" href="#">Home</a>
        <a class="nav-link" href="#">Features</a>
        <a class="nav-link" href="#">Contact</a>
      </nav>
    </div>
  </header>
</div>
<h2>Chat Messages - <?php echo $roomname; ?></h2>
<div class="anyClass">

</div>
<input type="text" class="form-control" name="usermsg" id="usermsg" placeholder="Start messaging"><br>              
<button class="btn btn-default bg-dark text-white" name="submitmsg" id="submitmsg">Send</button>
<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
<script>

setInterval(newCheck,1000);
function newCheck(){
  
  $.post("htcont.php",{room: '<?php echo $roomname;?>'},
  function(data,status){
   
  document.getElementsByClassName ("anyClass")[0].innerHTML = data;
 
  }
  
  
  )}
  </script>
  <script>
// Get the input field
var input = document.getElementById("usermsg");

// Execute a function when the user releases a key on the keyboard
input.addEventListener("keyup", function(event) {
  // Number 13 is the "Enter" key on the keyboard
  if (event.keyCode === 13) {
    // Cancel the default action, if needed
    event.preventDefault();
    // Trigger the button element with a click
    document.getElementById("submitmsg").click();
  }
});
    
$("#submitmsg").click(function(){
  var climsg = $("#usermsg").val(); 
  $.post("postmsg.php",{text: climsg,room:'<?php echo $roomname;?>',ip:'<?php echo $_SERVER['REMOTE_ADDR'];?>'},
  function(data,status){
     document.getElementsByClassName('anyClass')[0].innerHTML = data;});    
     $("#usermsg").val("");
     return false;
    
});
</script>



<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>    
<script src="/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>
