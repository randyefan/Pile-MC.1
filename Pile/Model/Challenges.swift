//
//  Challenges.swift
//  Pile
//
//  Created by Darindra R on 05/04/21.
//

import Foundation

struct Challenges {
    var data = [
        Challenge(
            challengeID: "01",
            iconChallenge: <#T##String#>,
            thumbnailChallenge: <#T##String#>,
            namaChallenge: "Audit sampah yang dihasilkan",
            description: "Untuk mengurangi sampah, challenge pertama yang perlu dilakukan yaitu mengetahui sampah apa yang kita hasilkan. Misalnya bagi kalian yang suka berbelanja minuman kaleng, dalam 1 hari kalian menghasilkan 2 botol kaleng. Atau suka menggunakan banyak tisu yang membuat banyak tumpukan tisu di tempat sampah. Salah satu cara yang bisa kamu lakukan untuk mengurangi sampah-sampah tersebut adalah dengan mengaudit sampah",
            why: [
                Why(
                    detail: "Dengan mengetahui sampah yang kita hasilkan, kita dapat lebih tahu dan menilai hal-hal apa yang benar-benar harus kita konsumsi dan mencari alternatif tanpa sampah.")],
            how: [
                How(
                    icon: <#T##String#>,
                    caption: "catat dan kategorikan sampah apa yang kamu hasilkan")],
            pointReward: <#T##Int#>,
            penalty: <#T##Int#>),
        Challenge(
            challengeID: "02",
            iconChallenge: <#T##String#>,
            thumbnailChallenge: <#T##String#>,
            namaChallenge: "Gunakan sapu tangan sebagai pengganti tisu",
            description: "Meski tisu mudah terurai saat dibuang, sebagian besar tisu yang kita gunakan dibuat dari pohon,Seperti kertas, pembuatan tisu membutuhkan kayu dan air yang sangat banyak. Untuk membuat 3,2 juta ton tisu toilet, dibutuhkan 54 batang pohon. Rata-rata, untuk setiap rol tisu, menghabiskan 140 liter air dalam proses pembuatannya. Di Indonesia saja, banyak hutan yang semakin gundul karena penebangan liar atau dijadikan lahan untuk bangunan. Bukan hanya itu, hutan di Indonesia dan dunia juga banyak yang mengalami kebakaran sehingga pohon-pohon semakin sedikit jumlahnya.",
            why: [
                Why(
                    detail: "Dengan kita mengurangi pemakaian tisu kita dapat mengurangi kebutuhan pohon dan air.")],
            how: [
                How(
                    icon: <#T##String#>,
                    caption: "Gunakan sapu tangan atau benda lain yang bisa digunakan sebagai alternatif tisu sekali pakai")],
            pointReward: <#T##Int#>,
            penalty: <#T##Int#>),
        Challenge(
            challengeID: "03",
            iconChallenge: <#T##String#>,
            thumbnailChallenge: <#T##String#>,
            namaChallenge: "Bawa botol minuman reusable saat aktivitas",
            description: "Tidak dapat dipungkiri bahwa plastik terkadang tidak dapat dihindari dalam kehidupan sehari-hari kita. Salah satu penggunaan plastik yang banyak digunakan misalnya untuk membeli makan yang di take away atau jajan-jajan. Nah, hal termudah yang dapat dilakukan untuk menghindari penggunaan plastik sekali pakai untuk jajan-jajan yaitu dengan membawa tempat sendiri untuk beli jajan.",
            why: [
                Why(
                    detail: "Untuk membuat 50 juta botol plastik setiap tahunnya, membutuhkan 17 juta barel minyak. 17 juta barel minyak sama dengan memberi daya 190.000 rumah dan bahan bakar 1,3 juta mobil setahun."),
                Why(
                    detail: "Menggunakan 1 botol reusable sama dengan menghemat 1.60 botol plastik, mengurangi pembuatan botol plastik di TPA, karena botol plastik juga membutuhkan ratusan tahun untuk terurai.")],
            how: [
                How(
                    icon: <#T##String#>,
                    caption: "Tentukan makanan yang kalian pilih dan pakai food countainer kalian untuk wadah makanan tersebut")],
            pointReward: <#T##Int#>,
            penalty: <#T##Int#>),
        Challenge(
            challengeID: "04",
            iconChallenge: <#T##String#>,
            thumbnailChallenge: <#T##String#>,
            namaChallenge: "Pakai food container saat aktivitas",
            description: "Tidak dapat dipungkiri bahwa plastik terkadang tidak dapat dihindari dalam kehidupan sehari-hari kita. Salah satu penggunaan plastik yang banyak digunakan misalnya untuk membeli makan yang di take away atau jajan-jajan. Nah, hal termudah yang dapat dilakukan untuk menghindari penggunaan plastik sekali pakai untuk jajan-jajan yaitu dengan membawa tempat sendiri untuk beli jajan.",
            why: [
                Why(
                    detail: "Selain mudah dilakukan, tempat yang kita gunakan bisa dibersihkan dan bisa dipakai kembali untuk jajan-jajan lainnya."),
                Why(
                    detail: "Lebih hemat, karena mungkin kalau kita lagi merasa malas untuk bawa-bawa tempat jadi lebih bisa menahan diri untuk jajan-jajan."),
                Why(
                    detail: "Jadi lebih prepare sebelum kemana-mana, lebih aware sama kebutuhan apa yang mau dibeli."),
                Why(
                    detail: "Mengurangi sampah kemasan sekali pakai.")
            ],
            how: [
                How(
                    icon: <#T##String#>,
                    caption: "Tentukan makanan yang kalian pilih dan pakai food countainer kalian untuk wadah makanan tersebut")],
            pointReward: <#T##Int#>,
            penalty: <#T##Int#>),
        Challenge(
            challengeID: "05",
            iconChallenge: <#T##String#>,
            thumbnailChallenge: <#T##String#>,
            namaChallenge: "Bawa tas reusable kemana-mana",
            description: "Penggunaan plastik sekali pakai tidak dapat dipisahkan dari kehidupan sehari-hari. Namun, dari segi produksi plastik banyak menggunakan oil dan natural gas yang tidak dapat diperbaharui. Tas plastik yang sering kita temui kebanyakan tipis dan mudah rusak, sehingga hanya dapat dipakai sekali, setelah itu plastik yang kita pakai akan berakhir di laut dan membutuhkan waktu sekitar 15 hingga 1000 tahun untuk terurai.",
            why: [
                Why(
                    detail: "Effortless dan sangat gampang untuk dilakukan."),
                Why(
                    detail: "Sulit terurai sehingga pemakaiannya bisa 15-1000 tahun."),
                Why(
                    detail: "Dari segi produksi plastik banyak menggunakan oil dan natural gas yang tidak bisa di perbaharui."),
                Why(
                    detail: "Tas plastik (kresek) kebanyakan tipis, gampang rusak, dan hanya bisa dipakai sekali saja. Dipakai beberapa menit, tetapi tersimpan 1000 tahun didunia.")
            ],
            how: [
                How(
                    icon: <#T##String#>,
                    caption: "Caranya sangat mudah, bawa selalu tas reusable di tas atau kendaraan kalian.")],
            pointReward: <#T##Int#>,
            penalty: <#T##Int#>),
        Challenge(
            challengeID: "06",
            iconChallenge: <#T##String#>,
            thumbnailChallenge: <#T##String#>,
            namaChallenge: "Tidak pakai sedotan atau membawa reuseable straw",
            description: "Sedotan plastik adalah suatu penemuan baru, berabad-abad yang lalu bangsa Sumerian menggunakan tabung silindris berongga untuk mencapai cairan bir di bawah fermentasi yang mereka buat di galon yang sangat besar. Kemudian berkembang menjadi sedotan kertas yang melekuk yg sangat membantu untuk digunakan di rumah sakit agar pasien dapat minum sambil tiduran. Kemudian mulai berkembang dengan bahan plastik yang bisa diproduksi dengan cepat, mudah dan menjadi tidak ada harganya.Tanpa kita sadari ini mengancam bumi karena sedotan plastik membutuhkan waktu urai yang lama. Nah, jangan berpikir bahwa berkata tidak pada sedotan plastik itu sia-sia karena “it’s only one plastic straw, say 8 billion people”.",
            why: [
                Why(
                    detail: "Sedotan plastik bisa berakhir di lautan."),
                Why(
                    detail: "Sedotan plastik mengancam nyawa dan kehidupan biota laut."),
            ],
            how: [
                How(
                    icon: <#T##String#>,
                    caption: "Berusaha untuk tidak menggunakan sedotan."),
                How(
                    icon: <#T##String#>,
                    caption: "Jika memang harus menggunakan sedotan, maka carilah alternatif dari sedotan plastik, tetap jaga dan gunakan baik-baik. Contohnya sedotan stainless akan sia-sia jika tidak digunakan lebih dari 149 kali.")],
            pointReward: <#T##Int#>,
            penalty: <#T##Int#>),
        Challenge(
            challengeID: "07",
            iconChallenge: <#T##String#>,
            thumbnailChallenge: <#T##String#>,
            namaChallenge: "Bring reusable cutlery",
            description: "Peralatan makanan yang kita temui di tempat - tempat makan rata rata menggunakan peralatan makanan yang sekali pakai dan merupakan bahan dasar plastik. Jutaan peralatan makan ini terbuang sia sia setiap tahunnya, sama seperti plastik lainnya peralatan makanan ini membutuhkan waktu yang lama untuk dapat terdegredasi dengan baik.",
            why: [
                Why(
                    detail: "Dengan selalu membawa peralatan kit ini, artinya kalian sudah mengurangi potensi sampah sekali pakai yang terbuang begitu saja."),
            ],
            how: [
                How(
                    icon: <#T##String#>,
                    caption: "Sediakan peralatan makan yang munking akan kamu butuhkan"),
                How(
                    icon: <#T##String#>,
                    caption: "Bawa selalu peralatan makan ini sebelum memulai aktifitas")],
            pointReward: <#T##Int#>,
            penalty: <#T##Int#>),
        Challenge(
            challengeID: "08",
            iconChallenge: <#T##String#>,
            thumbnailChallenge: <#T##String#>,
            namaChallenge: "Pilah Sampah",
            description: "sampah kering dan sampah basah tidak tercampur. Jika kedua jenis sampah ini tercampur, bisa menjadi sarang bakteri dan bau tak sedap.",
            why: [
                Why(
                    detail: "Mempermudah dalam pengolahan dan daur ulang sampah. Dengan memilah sampah, sampah kering yang belum terkena sampah basah (seperti sisa makanan) masih bisa didaur ulang atau recycle."),
            ],
            how: [
                How(
                    icon: <#T##String#>,
                    caption: "Pisahkan sampah organik (semua yang bisa dikompos, contohnya sisa makanan) dan sampah anorganik (yang tidak bisa dikompos, contohnya plastik, kardus, dan lain-lain).")],
            pointReward: <#T##Int#>,
            penalty: <#T##Int#>),
        Challenge(
            challengeID: "09",
            iconChallenge: <#T##String#>,
            thumbnailChallenge: <#T##String#>,
            namaChallenge: "Bawa Makan Siang dari Rumah",
            description: "Salah satu hal sederhana dan mudah yang dapat dilakukan untuk mengurangi jumlah sampah kemasan sekali pakai yaitu dengan membawa makan siang atau bekal dari rumah.",
            why: [
                Why(
                    detail: "Mengurangi sampah kemasan sekali pakai yg berakhir di TPA."),
            ],
            how: [
                How(
                    icon: <#T##String#>,
                    caption: "Sediakan makanan yang akan dibawa sebelum beraktivitas."),
                How(
                    icon: <#T##String#>,
                    caption: "Mungkin untuk alternatif lain, bisa bawa wadah untuk beli bekal makan siang.")],
            pointReward: <#T##Int#>,
            penalty: <#T##Int#>),
        Challenge(
            challengeID: "10",
            iconChallenge: <#T##String#>,
            thumbnailChallenge: <#T##String#>,
            namaChallenge: "Tanya Diri Sendiri 5 kali Sebelum Membeli Barang Baru",
            description: "Membeli barang baru tanpa pertimbangan merupakan salah satu kebiasaan buruk banyak orang yang dapat menyebabkan kita merasa boros, dengan membeli barang secara impulsif tanpa pertimbangan secara tidak langsung juga akan berdampak pada lingkungan.",
            why: [
                Why(
                    detail: "Mindful shopping membuat kalian lebih hemat dan mengurangi pencemaran lingkungan"),
            ],
            how: [
                How(
                    icon: <#T##String#>,
                    caption: "Apa yg akan kita lakukan dengan barang ini?"),
                How(
                    icon: <#T##String#>,
                    caption: "Bisakah menggunakan kembali yg ada disekeliling / pinjam?"),
                How(
                    icon: <#T##String#>,
                    caption: "Seberapa sering barang itu akan digunakan?"),
                How(
                    icon: <#T##String#>,
                    caption: "Apakah akan spark joy & -membuat kamu happy?"),
                How(
                    icon: <#T##String#>,
                    caption: "Bisakah kita bertanggung jawab atas sampahnya?")],
            pointReward: <#T##Int#>,
            penalty: <#T##Int#>),
        Challenge(
            challengeID: "11",
            iconChallenge: <#T##String#>,
            thumbnailChallenge: <#T##String#>,
            namaChallenge: "Cabut Listrik yang Tidak Digunakan",
            description: """
            Do you know? Kabel ataupun charger yang masih mencolok walaupun tidak digunakan masih mengalirkan listrik walaupun dengan jumlah yang sedikit. Dengan kata lain, charger dan kabel-kabel tadi jadi “vampir listrik” di rumah kalian.
            
            Nah, “vampir listrik” tadi secara tidak langsung dampaknya bisa sangat signifikan, baik untuk lingkungan seperti menghabiskan energi secara cuma-cuma maupun bagi pengeluaran sehari-hari.

            Lalu gimana caranya untuk kita lebih aware dengan “vampir listrik” ? Salah satu hal mudah yang bisa dilakukan yaitu dengan cara mencabut kabel atau aliran listrik yang tidak digunakan.
            """,
            why: [
                Why(
                    detail: "Dengan mencabut aliran listrik yang tidak terpakai, artinya kita sudah menghemat listrik dan mengurangi emisi karbon di lingkungan."),
                Why(
                    detail: "Menghasilkan kualitas hidup yang lebih baik."),
                Why(
                    detail: "Meminimalisir pemanasan global hingga 1,5 ° C."),
            ],
            how: [
                How(
                    icon: <#T##String#>,
                    caption: "Cabut listrik jika tidak digunakan lagi."),
                How(
                    icon: <#T##String#>,
                    caption: "Cabut semua listrik sebelum bepergian."),
                How(
                    icon: <#T##String#>,
                    caption: "Cabut semua listrik sebelum tidur."),
                ],
            pointReward: <#T##Int#>,
            penalty: <#T##Int#>),
        Challenge(
            challengeID: "12",
            iconChallenge: <#T##String#>,
            thumbnailChallenge: <#T##String#>,
            namaChallenge: "Masak makanan kalian sendiri",
            description: """
            Persentase sampah terbesar didominasi oleh sampah organik sebanyak 60% yang didalamnya termasuk sisa-sisa makanan. Terlebih lagi, tiap tahunnya sekitar 1,3 milliar ton makanan dibuang begitu saja. Hal tersebut merupakan gambaran jelas bahwa food waste merupakan suatu isu yang penting.

            Selain menghabiskan makanan, salah satu alternatif lainnya untuk mengurangi jumlah makanan yang terbuang atau food waste yaitu dengan merencanakan masakan/ makanan yang ingin dimakan dan melakukan meal prep.
            """,
            why: [
                Why(
                    detail: "Untuk mengurangi sampah yang dihasilkan dari kemasan makanan"),
            ],
            how: [
                How(
                    icon: <#T##String#>,
                    caption: "Masak makanan sendiri dan membawa menggunakan food countainer"),
                ],
            pointReward: <#T##Int#>,
            penalty: <#T##Int#>),
        Challenge(
            challengeID: "13",
            iconChallenge: <#T##String#>,
            thumbnailChallenge: <#T##String#>,
            namaChallenge: "Share Ke Teman Kamu Mengenai Climate Change",
            description: """
            Climate Change (perubahan iklim) adalah perubahan signifikan yang terjadi pada suhu, curah hujan, dan angin yang berlangsung dalam waktu yang cukup lama, bisa dalam satu dekade atau bahkan lebih.

            Climate change memberikan berbagai dampak buruk bagi kehidupan kita di bumi, seperti kerusakan ekosistem laut, masalah kebutuhan pangan, cuaca ekstrim dan bencana alam, mengganggu kesehatan dan penyebaran penyakit, dan lain-lain.

            Maka dari itu, sangat penting untuk setiap lapisan masyarakat mengetahui tentang climate change.
            """,
            why: [
                Why(
                    detail: "Menciptakan kesadaran bersama tentang dampak climate change yang sedang terjadi sekarang ini."),
                Why(
                    detail: "Menciptakan kesadaran bersama tentang pentingnya melakukan sesuatu atau act terhadap isu yang ada, karena every single act is that matters dan make a huge difference."),
                Why(
                    detail: "Memfokuskan pikiran orang bahwa hidup keberlanjutan (sustainable living) merupakan prioritas."),
            ],
            how: [
                How(
                    icon: <#T##String#>,
                    caption: "Share sedikit demi sedikit informasi tentang climate change ke teman-teman kalian. Bisa melalui obrolan langsung, bacaan, maupun melalui berbagai media (film, video, atau podcast).Misalnya apa itu climate change, dampaknya seperti apa, dan hal-hal yang bisa dikaitkan dengan kehidupan sehari-hari mereka yang bisa berubah akibat climate change."),
                How(
                    icon: <#T##String#>,
                    caption: "Mulai zero waste lifestyle dari diri sendiri untuk bisa jadi contoh atau role model bagi orang-orang disekitar kita. Zero waste lifestyle juga menjadi salah satu upaya pencegahan climate change."),
                ],
            pointReward: <#T##Int#>,
            penalty: <#T##Int#>),
        Challenge(
            challengeID: "14",
            iconChallenge: <#T##String#>,
            thumbnailChallenge: <#T##String#>,
            namaChallenge: "Compost",
            description: """
            Menurut laporan oleh World Bank, diperkirakan jumlah sampah akan terus meningkat hingga 70% di tahun 2050 apabila tidak ada aksi atau tindakan lebih lanjut terkait penanganan meminimalisir sampah.

            Persentase jumlah sampah di TPA yang semakin bertambah itu didominasi oleh sampah organik sebanyak 60% yang didalamnya termasuk sisa-sisa makanan.

            Dampaknya apa?

            Apabila hal ini terus terjadi dan tidak dikelola dengan bijak, tumpukan sampah organik yang tercampur dengan sampah lainnya akan menghasilkan bau tak sedap & gas metana yang berbahaya bagi lingkungan. Salah satu alternatif yang dapat dilakukan yaitu dengan melakukan kompos. Kompos adalah hasil penguraian segala sisa organik yang kita hasilkan.
            """,
            why: [
                Why(
                    detail: "Kompos berperan besar dalam kelangsungan hidup seperti menyuburkan tanah & tanaman."),
                Why(
                    detail: "Kompos juga dapat menyelesaikan 50% masalah sampah rumah tangga."),
                Why(
                    detail: "Supply bahan makanan kita lebih terjaga."),
            ],
            how: [
                How(
                    icon: <#T##String#>,
                    caption: "Belajar dan banyak cari tahu cara kompos."),
                How(
                    icon: <#T##String#>,
                    caption: "Menyadari kalau kompos itu proses belajar utk hal yg lebih baik."),
                How(
                    icon: <#T##String#>,
                    caption: "Jangan takut gagal atau salah, karena proses kompos sama dengan bereksperimen hingga benar-benar tau cara kompos yang benar."),
                ],
            pointReward: <#T##Int#>,
            penalty: <#T##Int#>),
        Challenge(
            challengeID: "15",
            iconChallenge: <#T##String#>,
            thumbnailChallenge: <#T##String#>,
            namaChallenge: "Compost",
            description: """
            Indonesia diperkirakan menghasilkan 64 juta ton sampah tiap tahunnya. Berdasarkan data Kementrian Lingkungan Hidup dan Kehutanan (KLHK), persentase jenis sampah yang dihasilkan didominasi oleh sampah organik, yaitu mencapai 60% dari total sampah. Diikuti oleh sampah plastik sebanyak 14%, sampah kertas 9%, metal 4,3%, kaca, kayu dan bahan lainnya 12,7%. Salah satu contoh sampah organik yaitu sisa-sisa makanan.

            Dari 1/3 semua makanan yang di produksi di bumi tidak sepenuhnya sampai ke konsumen. Entah karena basi di perjalanan atau dibuang oleh konsumen di negara-negara kaya yang biasanya membeli secara berlebihan dan membuang begitu saja kelebihannya yang tidak mereka habiskan.

            Hal ini kurang lebih menghasilkan sekitar 1,3 miliar ton makanan yang bisa bernilai hampir $1 triliun. Sedangkan di sisi lain, jumlah orang yang menderita kelaparan (di dunia) mencapai hingga 800 juta jiwa lebih.

            Lalu, bagaimana? Untuk mengurangi jumlah sampah organik dan sampah sisa makanan atau food waste, salah satu cara yang paling mudah untuk dilakukan yaitu dengan menghabiskan makanan yang kamu makan.
            """,
            why: [
                Why(
                    detail: "Dengan menghabiskan makanan, artinya kita tidak menyia-nyiakan energi yang digunakan untuk produksi, panen, pengangkutan, dan pengemasan makanan yg terbuang."),
                Why(
                    detail: "Sampah organik dari sisa makanan bisa menghasilkan gas etana (gas berbau & beracun) yang memiliki efek yg lebih buruk daripada karbondioksida."),
                Why(
                    detail: "Mengurangi limbah sampah organik di TPA."),
            ],
            how: [
                How(
                    icon: <#T##String#>,
                    caption: "Masak atau beli makanan sesuai dengan kebutuhan dan porsi makan kalian."),
                How(
                    icon: <#T##String#>,
                    caption: "Walaupun masih berlebih saat dimakan sekali, olah kembali sisa makanan tersebut menjadi makanan lain agar tetap habis (jika mungkin untuk dilakukan)."),
                ],
            pointReward: <#T##Int#>,
            penalty: <#T##Int#>),
    ]
}
