Untuk membuat situs web statis di GitHub, Anda dapat menggunakan GitHub Pages. Berikut adalah langkah-langkah umumnya:
1. Buat Repositori di GitHub:
Buat repositori baru di GitHub.
Beri nama repositorinya sesuai keinginan Anda, misalnya username.github.io. Pastikan nama repositorinya memiliki format yang sesuai agar GitHub Pages dapat mengenali sebagai situs web utama.
2. Inisialisasi Repositori Lokal (Opsional):
Jika belum memiliki proyek lokal, gunakan perintah berikut untuk menginisialisasi repositori lokal:
     git init
3. Tambahkan Berkas HTML atau Jekyll (Opsional):
Jika Anda memiliki situs web statis sederhana, tambahkan berkas HTML ke repositori. Jika menggunakan Jekyll, pastikan proyek Jekyll sudah disiapkan.
Jika belum ada berkas HTML atau Jekyll, Anda bisa menambahkannya kemudian.
4. Commit dan Push ke GitHub:
Tambahkan berkas-berkas dan commit perubahan dengan perintah:
     git add .
     git commit -m "Menambahkan berkas HTML atau Jekyll"
Push ke repositori GitHub:
     git push -u origin main
Pastikan untuk mengganti main dengan nama branch yang sesuai jika berbeda.
5. Aktifkan GitHub Pages di Pengaturan Repositori:
Buka halaman repositori di GitHub.
Pilih tab "Settings" di bagian atas.
Gulir ke bawah hingga menemukan bagian "GitHub Pages".
Pada opsi "Source", pilih branch yang berisi berkas situs web Anda (biasanya main atau master).
Setelah Anda menyimpan pengaturan, GitHub Pages akan menghasilkan URL tempat situs web Anda dapat diakses (mungkin perlu beberapa menit).
6.Tunggu Proses Deploy:
Tunggu beberapa saat hingga GitHub menyelesaikan proses deploy.
Kunjungi URL yang diberikan pada bagian "Your site is published at" untuk melihat situs web statis Anda.
Sekarang, situs web statis Anda telah berhasil di-hosting di GitHub Pages. Setiap perubahan yang Anda lakukan dan push ke repositori akan segera memperbarui situs web. Pastikan berkas-berkas HTML, CSS, dan konten lainnya sesuai dengan kebutuhan situs web Anda.





