<?php
include_once("koneksi.php");
$id = $_GET['id'];
$query = mysqli_query($koneksi, "DELETE FROM mahasiswa WHERE id=$id") or die(mysqli_error($koneksi));

if($query){
    echo "data berhasil dihapus";
    header("location:index.php");
}else{
    echo "data gagal dihapus";
    header("location:index.php");
}
?>
