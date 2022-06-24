<?php
include "connection.php";

$username = $_POST['username'];
$password = $_POST['password'];
// mengambil data dari database 
$sql = "SELECT username, password FROM pengelola ORDER BY username";
$hasil = mysqli_query($connection, $sql);
// END mengambil data dari database 
$booleanLogin = 0;
// Looping untuk ngecek semua isi database
while ($data = mysqli_fetch_array($hasil)) {
// Nyocokin Array dengan Database
if($username == $data['username'] && $password == $data['password'] ){
    $booleanLogin = 1;
}
}
if($booleanLogin == 1)
{
    header("Location: /LaporinProject/halaman_admin.php");
}
else{
    header("Location: /LaporinProject/login_admin_gagal.html");
}
?>