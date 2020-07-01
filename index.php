<pre>
Dokumentasi API Obat Herbal:

<strong>Endpoint 1:</strong>
<strong>"/get_listtumbuhan.php"</strong>
metode: <strong>GET</strong>
penjelasan: Endpoint ini akan menampilkan list tumbuhan obat yang terdapat di database
parameter yang dibutuhkan: <em>apikey</em>
contoh respon:

"status": {
    "code": 200,
    "description": "Request OK",
    "message": "Valid"
  },
  "results": [
    {
      "id_tumbuhan": "1",
      "nama_lokal": "Bawang Hutan",
      "nama_indonesia": "Bawang Dayak",
      "nama_ilmiah": "iridaceae",
      "kegunaan": "tekanan darah tinggi"
    },
    {
      "id_tumbuhan": "2",
      "nama_lokal": "alang-alang",
      "nama_indonesia": "ilalang",
      "nama_ilmiah": "imperata cylindrica",
      "kegunaan": "panas dalam, muntah darah"
    }
  ]
}

<strong>Endpoint 2:</strong>
<strong>"/post_tumbuhan"</strong>
metode: <strong>POST</strong>
penjelasan: Endpoint ini digunakan untuk memasukkan data tumbuhan obat baru ke dalam datase dan untuk memasukkan data dibutuhkan beberapa parameter penunjang
parameter yang dibutuhkan: <em>apikey</em>, <em>nama_lokal</em>, <em>nama_indonesia</em>, <em>nama_ilmiah</em>, <em>kegunaan</em>
contoh respon:

{
    "status": {
        "code": 200,
        "description": "Request OK"
    },
    "results": "Data Berhasil Ditambahkan"
}

<a href="register.php">Dapatkan api key</a>

</pre>