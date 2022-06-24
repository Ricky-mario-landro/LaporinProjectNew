<?php
include "connection.php";

if (isset($_POST['dihapus']))
    {
        $DeleteLaporan = "DELETE FROM laporan WHERE no_telepon='".$_POST['baris_sekarang']."'";
        $DeleteLaporanHasil = mysqli_query($connection, $DeleteLaporan);
        header("Location: /LaporinProject/admin_semua_laporan.php");
    }
else{
    echo "Terjadi error";
}
?>