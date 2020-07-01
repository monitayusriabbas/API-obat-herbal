<?php

    header("Content-Type: application/json");

    //inisialisasi variable aray untuk hasil
    $result = array();

    //fungsi inisialisasi status respon
    function status($kode, $deskripsi){
      $result['status']['code'] = $kode;
      $result['status']['description'] = $deskripsi;

      return $result;
    }
   
    //tangkap method
    $method = $_SERVER["REQUEST_METHOD"];

     //filter method
     if($method=='GET'){
       $result = status(200, 'Request OK');

        //jika method benar
        //membuat koneksi database
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "obat_herbal";

        //create connection
        $conn = new mysqli($servername, $username, $password, $dbname);

        //cek ada tidaknya data get
        if(isset($_GET['id'])){
          $sql = "SELECT * FROM jenis_tumbuhan WHERE id_tumbuhan=$_GET[id]";
        }else{
          $sql = "SELECT * FROM jenis_tumbuhan";
        }

        $hasil = $conn->query($sql);

        $result['results'] = $hasil->fetch_all(MYSQLI_ASSOC);

     } else {
      $result = status(404, 'Bad Request');
     }

    echo json_encode($result);

?>