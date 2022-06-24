<?php
$connection = mysqli_connect('localhost', 'root', '', 'laporin_project');
if (!$connection) {
    die('Gagal terhubung ke MySQL: ' . mysqli_connect_error());
}
?>