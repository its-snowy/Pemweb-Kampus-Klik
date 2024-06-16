<?php
include_once('koneksi.php');

require __DIR__ . '/vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

$query = "SELECT * FROM mahasiswa"; 
$result = mysqli_query($koneksi, $query);

$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();

$sheet->setCellValue('A1', 'NPM');
$sheet->setCellValue('B1', 'Nama Mahasiswa');
$sheet->setCellValue('C1', 'Prodi');
$sheet->setCellValue('D1', 'Nilai');
$sheet->setCellValue('E1', 'Huruf Mutu');

$row = 2;

while ($data = mysqli_fetch_assoc($result)) {
    $sheet->setCellValue('A' . $row, $data['id']);
    $sheet->setCellValue('B' . $row, $data['nama_mhs']);
    $sheet->setCellValue('C' . $row, $data['prodi_mhs']);
    $sheet->setCellValue('D' . $row, $data['nilai_mhs']);
    $sheet->setCellValue('E' . $row, $data['huruf_mutu']);
    $row++;
}

header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="data_mahasiswa.xlsx"');
header('Cache-Control: max-age=0');

$writer = new Xlsx($spreadsheet);
$writer->save('php://output');
