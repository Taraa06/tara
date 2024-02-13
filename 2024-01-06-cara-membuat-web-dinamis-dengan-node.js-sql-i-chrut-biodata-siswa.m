1. Inisialisasi Proyek:
Buat direktori baru untuk proyek Anda dan masuk ke dalamnya melalui terminal.
code:
    mkdir web-dinamis-siswa
    cd web-dinamis-siswa
3. Inisialisasi Proyek Node.js:
Jalankan perintah berikut untuk membuat file package.json dan menginstal beberapa dependensi yang diperlukan.
code:
    npm init -y
    npm install express mysql cheerio
4. Konfigurasi Database:
Buat database MySQL dan tabel untuk menyimpan data biodata siswa. Anda dapat menggunakan tools seperti phpMyAdmin atau menjalankan perintah SQL di terminal MySQL.
code:
    CREATE DATABASE nama_database;
    USE nama_database;
    
    CREATE TABLE siswa (
      id INT AUTO_INCREMENT PRIMARY KEY,
      nama VARCHAR(255),
      alamat VARCHAR(255),
      kelas VARCHAR(10)
    );
5. Membuat Server Express:
Buat file 'app.js' dan tambahkan kode untuk membuat server Express.
code:
    const express = require('express');
    const mysql = require('mysql');
    const cheerio = require('cheerio');
    const app = express();
    const port = 3000;
    
    // Konfigurasi database
    const connection = mysql.createConnection({
      host: 'localhost',
      user: 'username',
      password: 'password',
      database: 'nama_database'
    });
    
    connection.connect();
    
    // Middleware untuk parsing body dari request
    app.use(express.json());
    app.use(express.urlencoded({ extended: true }));
    
    // Endpoint untuk menampilkan biodata siswa
    app.get('/siswa', (req, res) => {
      connection.query('SELECT * FROM siswa', (error, results) => {
        if (error) throw error;
        res.json(results);
      });
    });
    
    // Endpoint untuk menambahkan siswa baru
    app.post('/siswa', (req, res) => {
      const { nama, alamat, kelas } = req.body;
      const query = `INSERT INTO siswa (nama, alamat, kelas) VALUES (?, ?, ?)`;
      connection.query(query, [nama, alamat, kelas], (error, results) => {
        if (error) throw error;
        res.json({ message: 'Siswa ditambahkan!', id: results.insertId });
      });
    });
    
    // ... (Tambahkan endpoint lainnya sesuai kebutuhan)
    
    // Jalankan server
    app.listen(port, () => {
      console.log(`Server berjalan di http://localhost:${port}`);
    });
   Anda dapat menambahkan endpoint lainnya sesuai kebutuhan, seperti mengupdate data siswa, menghapus siswa, atau mengambil data siswa dari situs web tertentu.
5. Jalankan Server:
Simpan file 'app.js' dan jalankan server dengan perintah berikut.
code:
    node app.js
   
Sekarang, Anda dapat mengakses API di http://localhost:3000/siswa untuk mendapatkan data siswa dan menggunakan endpoint lainnya sesuai kebutuhan.

Pastikan untuk memahami dan mengatasi potensi risiko keamanan, terutama terkait dengan SQL Injection, dan pastikan bahwa Anda memiliki izin yang tepat untuk melakukan scraping pada situs web yang diinginkan.



