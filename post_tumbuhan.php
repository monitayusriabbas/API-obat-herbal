<?php 

  header("Content-Type: application/json");

  //untuk koneksi ke db
  $method = $_SERVER['REQUEST_METHOD'];

  $result = array();

  function status($kode, $deskripsi){
      $result['status']['code'] = $kode;
      $result['status']['description'] = $deskripsi;

      return $result;
  }

  if($method=='POST'){
       $result = status(200, 'Request OK');

        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "obat_herbal";

        $conn = new mysqli($servername,$username,$password,$dbname);


      if(isset($_POST['nama_lokal']) AND isset($_POST['nama_indonesia'])){

         $sql = "INSERT INTO jenis_tumbuhan (nama_lokal, nama_indonesia, nama_ilmiah, kegunaan)
         VALUES('$_POST[nama_indonesia]','$_POST[nama_ilmiah]','$_POST[nama_indonesia]','$_POST[kegunaan]')";

         $hasil = $conn->query($sql);

         $result['results'] = 'Data Berhasil Ditambahkan';
      }
      else{
          $result = status(404, 'Bad Request');
      }
  }

  echo json_encode($result);

 ?>