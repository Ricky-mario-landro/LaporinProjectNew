<?php
include "connection.php";

if (isset($_POST['ditolak']))
    {
        $DeleteLaporan = "DELETE FROM laporan WHERE no_telepon='".$_POST['baris_sekarang']."'";
        $DeleteLaporanHasil = mysqli_query($connection, $DeleteLaporan);
        header("Location: /LaporinProject/halaman_admin.php");
    }
else{
    echo "Terjadi error";
}
?>