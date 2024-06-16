<?php
include "koneksi.php";

$id_mhs = $_POST['id'];


if(isset($_POST["proses"])){
    $nama_mhs = $_POST['input1'];
    $prodi_mhs = $_POST['input2'];
    $nilai_mhs = $_POST['input3'];
    
    $proses = mysqli_query($koneksi, "UPDATE mahasiswa SET nama_mhs='$nama_mhs', prodi_mhs='$prodi_mhs', nilai_mhs='$nilai_mhs' WHERE id=$id_mhs") or die(mysqli_error($koneksi));
    $huruf_mutu = '';
    
    if($proses){
        echo "<script>alert('sukses')</script>";
        header("location:index.php");
    } else {
        echo "<script>alert('gagal')</script>";
    }
}
?>
