<?php
include "koneksi.php";

if(isset($_POST["proses"])){
    $nama_mhs = $_POST['input1'];
    $prodi_mhs = $_POST['input2'];
    $nilai_mhs = $_POST['input3'];
    $proses = mysqli_query($koneksi, "INSERT INTO mahasiswa (nama_mhs, prodi_mhs, nilai_mhs) VALUES ('$nama_mhs', '$prodi_mhs','$nilai_mhs')") or die(mysqli_error($koneksi));
    $huruf_mutu = '';
    
    if($proses){
        echo "<script>alert('sukses')</script>";
        header("location:index.php");
    } else {
        echo "<script>alert('gagal')</script>";
    }
}
?>
