<?php
include "connection.php";
$nama = $_POST['nama'];
$no_telepon = $_POST['no_telp'];
$tanggal = $_POST['tanggal'];
$jenis_laporan = $_POST['jenis'];
$lokasi = $_POST['alamat'];
$deskripsi = $_POST['deskripsi'];

$sql = "INSERT INTO laporan (nama, no_telepon, tanggal, jenis_laporan, lokasi, deskripsi)
    VALUES ('$nama', '$no_telepon', '$tanggal', '$jenis_laporan', '$lokasi', '$deskripsi')";
$terkirim = mysqli_query($connection, $sql);
if ($terkirim) {
    header("Location: /LaporinProject/halaman_laporan_terkirim.html");
} else {
    // echo "Data gagal disimpan!";
    echo '<script type ="text/JavaScript">';  
    echo 'alert("Data gagal disimpan!")';  
    echo '</script>';  
}
?>