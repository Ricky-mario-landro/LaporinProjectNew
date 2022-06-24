<?php
include "connection.php";

if (isset($_POST['disetujui']))
    {
        $UpdateInfo = "UPDATE laporan SET info = 1 WHERE no_telepon='".$_POST['baris_sekarang']."'";
        $UpdateInfoHasil = mysqli_query($connection, $UpdateInfo);
        header("Location: /LaporinProject/halaman_admin.php");
    }
else{
    echo "Terjadi error";
}
?>