//
//  Challenge.swift
//  Pile
//
//  Created by Darindra R on 05/04/21.
//

import Foundation

struct ChallengeGenerate {
    var challengeIDGenerate: String
    var iconChallengeGenerate: String
    var thumbnailChallengeGenerate: String
    var namaChallengeGenerate: String
    var descriptionGenerate: String
    var whyGenerate: [WhyGenerate]
    var howGenerate: [HowGenerate]
    var pointRewardGenerate: Int
    var penaltyGenerate: Int
}

struct HowGenerate {
    var iconGenerate: String
    var captionGenerate: String
}

struct WhyGenerate {
    var detailGenerate: String
}

struct DailyChallenges {
    var challenges: Challenge
    var status: Status
}

struct ProgressChallenge {
    var challenges: Challenge
    var status: [Status]
}

struct Challenges {
    var data = [
        ChallengeGenerate(
            challengeIDGenerate: "01",
            iconChallengeGenerate: "Audit",
            thumbnailChallengeGenerate: "AuditWaste",
            namaChallengeGenerate: "Audit sampah yang dihasilkan",
            descriptionGenerate: """
            Untuk mengurangi sampah, challenge pertama yang perlu dilakukan yaitu mengetahui sampah apa yang kita hasilkan.

            Misalnya bagi kalian yang suka berbelanja minuman kaleng, dalam 1 hari kalian menghasilkan 2 botol kaleng. Atau suka menggunakan banyak tisu yang membuat banyak tumpukan tisu di tempat sampah.

            Salah satu cara yang bisa kamu lakukan untuk mengurangi sampah-sampah tersebut adalah dengan mengaudit sampah
            """,
            whyGenerate: [
                WhyGenerate(
                    detailGenerate: "Dengan mengetahui sampah yang kita hasilkan, kita dapat lebih tahu dan menilai hal-hal apa yang benar-benar harus kita konsumsi dan mencari alternatif tanpa sampah.")],
            howGenerate: [
                HowGenerate(
                    iconGenerate: "Audit",
                    captionGenerate: "catat dan kategorikan sampah apa yang kamu hasilkan")],
            pointRewardGenerate: 0,
            penaltyGenerate: 0),
        ChallengeGenerate(
            challengeIDGenerate: "02",
            iconChallengeGenerate: "kain",
            thumbnailChallengeGenerate: "MengurangiPenggunaanTisu",
            namaChallengeGenerate: "Gunakan sapu tangan sebagai pengganti tisu",
            descriptionGenerate: """
            Meski tisu mudah terurai saat dibuang, sebagian besar tisu yang kita gunakan dibuat dari pohon, Seperti kertas, pembuatan tisu membutuhkan kayu dan air yang sangat banyak.

            Untuk membuat 3,2 juta ton tisu toilet, dibutuhkan 54 batang pohon. Rata-rata, untuk setiap rol tisu, menghabiskan 140 liter air dalam proses pembuatannya.

            Di Indonesia saja, banyak hutan yang semakin gundul karena penebangan liar atau dijadikan lahan untuk bangunan. Bukan hanya itu, hutan di Indonesia dan dunia juga banyak yang mengalami kebakaran sehingga pohon-pohon semakin sedikit jumlahnya.
            """,
            whyGenerate: [
                WhyGenerate(
                    detailGenerate: "Dengan kita mengurangi pemakaian tisu kita dapat mengurangi kebutuhan pohon dan air.")],
            howGenerate: [
                HowGenerate(
                    iconGenerate: "kain",
                    captionGenerate: "Gunakan sapu tangan sebagai alternatif tisu sekali pakai")],
            pointRewardGenerate: 0,
            penaltyGenerate: 0),
        ChallengeGenerate(
            challengeIDGenerate: "03",
            iconChallengeGenerate: "Bawa Botol Minum",
            thumbnailChallengeGenerate: "UseReusableBottle",
            namaChallengeGenerate: "Bawa botol minuman reusable saat aktivitas",
            descriptionGenerate: """
            Tidak dapat dipungkiri bahwa plastik terkadang tidak dapat dihindari dalam kehidupan sehari-hari kita. Salah satu penggunaan plastik yang banyak digunakan misalnya untuk membeli makan yang di take away atau jajan-jajan.
            
            Nah, hal termudah yang dapat dilakukan untuk menghindari penggunaan plastik sekali pakai untuk jajan-jajan yaitu dengan membawa tempat sendiri untuk beli jajan.
            """,
            whyGenerate: [
                WhyGenerate(
                    detailGenerate: "Untuk membuat 50 juta botol plastik setiap tahunnya, membutuhkan 17 juta barel minyak. 17 juta barel minyak sama dengan memberi daya 190.000 rumah dan bahan bakar 1,3 juta mobil setahun."),
                WhyGenerate(
                    detailGenerate: "Menggunakan 1 botol reusable sama dengan menghemat 1.60 botol plastik, mengurangi pembuatan botol plastik di TPA, karena botol plastik juga membutuhkan ratusan tahun untuk terurai.")],
            howGenerate: [
                HowGenerate(
                    iconGenerate: "Bawa Botol Minum",
                    captionGenerate: "Gunakan Botol reusable (tumbler) untuk minuman kalian.")],
            pointRewardGenerate: 0,
            penaltyGenerate: 0),
        ChallengeGenerate(
            challengeIDGenerate: "04",
            iconChallengeGenerate: "pakai food container",
            thumbnailChallengeGenerate: "FoodContainer",
            namaChallengeGenerate: "Pakai food container saat aktivitas",
            descriptionGenerate: """
            Tidak dapat dipungkiri bahwa plastik terkadang tidak dapat dihindari dalam kehidupan sehari-hari kita. Salah satu penggunaan plastik yang banyak digunakan misalnya untuk membeli makan yang di take away atau jajan-jajan.

            Nah, hal termudah yang dapat dilakukan untuk menghindari penggunaan plastik sekali pakai untuk jajan-jajan yaitu dengan membawa tempat sendiri untuk beli jajan.
            """,
            whyGenerate: [
                WhyGenerate(
                    detailGenerate: "Selain mudah dilakukan, tempat yang kita gunakan bisa dibersihkan dan bisa dipakai kembali untuk jajan-jajan lainnya."),
                WhyGenerate(
                    detailGenerate: "Lebih hemat, karena mungkin kalau kita lagi merasa malas untuk bawa-bawa tempat jadi lebih bisa menahan diri untuk jajan-jajan."),
                WhyGenerate(
                    detailGenerate: "Jadi lebih prepare sebelum kemana-mana, lebih aware sama kebutuhan apa yang mau dibeli."),
                WhyGenerate(
                    detailGenerate: "Mengurangi sampah kemasan sekali pakai.")
            ],
            howGenerate: [
                HowGenerate(
                    iconGenerate: "pakai food container",
                    captionGenerate: "Pakai food countainer kalian untuk wadah makanan kalian")],
            pointRewardGenerate: 0,
            penaltyGenerate: 0),
        ChallengeGenerate(
            challengeIDGenerate: "05",
            iconChallengeGenerate: "Bawa Tas",
            thumbnailChallengeGenerate: "PlasticBags",
            namaChallengeGenerate: "Bawa tas reusable kemana-mana",
            descriptionGenerate: """
            Penggunaan plastik sekali pakai tidak dapat dipisahkan dari kehidupan sehari-hari. Namun, dari segi produksi plastik banyak menggunakan oil dan natural gas yang tidak dapat diperbaharui.

            Tas plastik yang sering kita temui kebanyakan tipis dan mudah rusak, sehingga hanya dapat dipakai sekali, setelah itu plastik yang kita pakai akan berakhir di laut dan membutuhkan waktu sekitar 15 hingga 1000 tahun untuk terurai.
            """,
            whyGenerate: [
                WhyGenerate(
                    detailGenerate: "Effortless dan sangat gampang untuk dilakukan."),
                WhyGenerate(
                    detailGenerate: "Sulit terurai sehingga pemakaiannya bisa 15-1000 tahun."),
                WhyGenerate(
                    detailGenerate: "Dari segi produksi plastik banyak menggunakan oil dan natural gas yang tidak bisa di perbaharui."),
                WhyGenerate(
                    detailGenerate: "Tas plastik (kresek) kebanyakan tipis, gampang rusak, dan hanya bisa dipakai sekali saja. Dipakai beberapa menit, tetapi tersimpan 1000 tahun didunia.")
            ],
            howGenerate: [
                HowGenerate(
                    iconGenerate: "Bawa Tas",
                    captionGenerate: "Bawa selalu tas reusable dan gunakan saat berbelanja")],
            pointRewardGenerate: 0,
            penaltyGenerate: 0),
        ChallengeGenerate(
            challengeIDGenerate: "06",
            iconChallengeGenerate: "Reusable Straw",
            thumbnailChallengeGenerate: "PlasticStraw",
            namaChallengeGenerate: "Tidak pakai sedotan atau membawa reuseable straw",
            descriptionGenerate: """
            Sedotan plastik adalah suatu penemuan baru, berabad-abad yang lalu bangsa Sumerian menggunakan tabung silindris berongga untuk mencapai cairan bir di bawah fermentasi yang mereka buat di galon yang sangat besar.

            Kemudian berkembang menjadi sedotan kertas yang melekuk yg sangat membantu untuk digunakan di rumah sakit agar pasien dapat minum sambil tiduran.

            Kemudian mulai berkembang dengan bahan plastik yang bisa diproduksi dengan cepat, mudah dan menjadi tidak ada harganya.Tanpa kita sadari ini mengancam bumi karena sedotan plastik membutuhkan waktu urai yang lama.

            Nah, jangan berpikir bahwa berkata tidak pada sedotan plastik itu sia-sia karena “it’s only one plastic straw, say 8 billion people”.
            """,
            whyGenerate: [
                WhyGenerate(
                    detailGenerate: "Sedotan plastik bisa berakhir di lautan."),
                WhyGenerate(
                    detailGenerate: "Sedotan plastik mengancam nyawa dan kehidupan biota laut."),
            ],
            howGenerate: [
                HowGenerate(
                    iconGenerate: "Reusable Straw",
                    captionGenerate: "Berusaha untuk tidak menggunakan sedotan plastik"),
                HowGenerate(
                    iconGenerate: "Reusable Straw",
                    captionGenerate: "Pakai sedotan stainless untuk minuman kalian")],
            pointRewardGenerate: 0,
            penaltyGenerate: 0),
        ChallengeGenerate(
            challengeIDGenerate: "07",
            iconChallengeGenerate: "reusable cuttlery",
            thumbnailChallengeGenerate: "PlasticCutlery",
            namaChallengeGenerate: "Bring reusable cutlery",
            descriptionGenerate: """
            Plastic cutlery is everywhere, and most of it can be used only once. Billions of forks, knives, and spoons are thrown away each year. But like other plastic items—such as bags and bottles—cutlery can take centuries to break down naturally, giving the plastic waste ample time to work its way into the environment.

            Peralatan makanan yang kita temui di tempat tempat makan rata rata menggunakan peralatan makanan yang sekali pakai. Jutaan peralatan makan terbuang setiap tahunnya, seperti plastik lainnya peralatan makanan ini membutuhkan waktu yang lama untuk dapat terdegredasi dengan baik.
            """,
            whyGenerate: [
                WhyGenerate(
                    detailGenerate: "Dengan selalu membawa peralatan kit ini, artinya kalian sudah mengurangi potensi sampah sekali pakai yang terbuang begitu saja."),
            ],
            howGenerate: [
                HowGenerate(
                    iconGenerate: "reusable cuttlery",
                    captionGenerate: "Bawa selalu peralatan makan untuk makanan kalian")],
            pointRewardGenerate: 0,
            penaltyGenerate: 0),
        ChallengeGenerate(
            challengeIDGenerate: "08",
            iconChallengeGenerate: "Sort Sampah",
            thumbnailChallengeGenerate: "AuditWaste",
            namaChallengeGenerate: "Pilah Sampah",
            descriptionGenerate: "sampah kering dan sampah basah tidak tercampur. Jika kedua jenis sampah ini tercampur, bisa menjadi sarang bakteri dan bau tak sedap.",
            whyGenerate: [
                WhyGenerate(
                    detailGenerate: "Mempermudah dalam pengolahan dan daur ulang sampah. Dengan memilah sampah, sampah kering yang belum terkena sampah basah (seperti sisa makanan) masih bisa didaur ulang atau recycle."),
            ],
            howGenerate: [
                HowGenerate(
                    iconGenerate: "Sort Sampah",
                    captionGenerate: "Pisahkan sampah organik dan sampah anorganik")],
            pointRewardGenerate: 0,
            penaltyGenerate: 0),
        ChallengeGenerate(
            challengeIDGenerate: "09",
            iconChallengeGenerate: "bento",
            thumbnailChallengeGenerate: "FoodContainer",
            namaChallengeGenerate: "Bawa Makan Siang dari Rumah",
            descriptionGenerate: "Salah satu hal sederhana dan mudah yang dapat dilakukan untuk mengurangi jumlah sampah kemasan sekali pakai yaitu dengan membawa makan siang atau bekal dari rumah.",
            whyGenerate: [
                WhyGenerate(
                    detailGenerate: "Mengurangi sampah kemasan sekali pakai yg berakhir di TPA."),
            ],
            howGenerate: [
                HowGenerate(
                    iconGenerate: "bento",
                    captionGenerate: "Bawa dan pakai wadah makanan untuk beli bekal makan kalian.")],
            pointRewardGenerate: 0,
            penaltyGenerate: 0),
        ChallengeGenerate(
            challengeIDGenerate: "10",
            iconChallengeGenerate: "Beli Barang Baru",
            thumbnailChallengeGenerate: "AuditWaste",
            namaChallengeGenerate: "Tanya Diri Sendiri 5 kali Sebelum Membeli Barang Baru",
            descriptionGenerate: "Membeli barang baru tanpa pertimbangan merupakan salah satu kebiasaan buruk banyak orang yang dapat menyebabkan kita merasa boros, dengan membeli barang secara impulsif tanpa pertimbangan secara tidak langsung juga akan berdampak pada lingkungan.",
            whyGenerate: [
                WhyGenerate(
                    detailGenerate: "Mindful shopping membuat kalian lebih hemat dan mengurangi pencemaran lingkungan"),
            ],
            howGenerate: [
                HowGenerate(
                    iconGenerate: "Beli Barang Baru",
                    captionGenerate: "Apa yg akan kita lakukan dengan barang ini?"),
                HowGenerate(
                    iconGenerate: "Beli Barang Baru",
                    captionGenerate: "Bisakah menggunakan kembali yg ada disekeliling / pinjam?"),
                HowGenerate(
                    iconGenerate: "Beli Barang Baru",
                    captionGenerate: "Seberapa sering barang itu akan digunakan?"),
                HowGenerate(
                    iconGenerate: "Beli Barang Baru",
                    captionGenerate: "Apakah akan spark joy & membuat kamu happy?"),
                HowGenerate(
                    iconGenerate: "Beli Barang Baru",
                    captionGenerate: "Bisakah kita bertanggung jawab atas sampahnya?")],
            pointRewardGenerate: 0,
            penaltyGenerate: 0),
        ChallengeGenerate(
            challengeIDGenerate: "11",
            iconChallengeGenerate: "bento",
            thumbnailChallengeGenerate: "FoodContainer",
            namaChallengeGenerate: "Masak makanan kalian sendiri",
            descriptionGenerate: """
            Persentase sampah terbesar didominasi oleh sampah organik sebanyak 60% yang didalamnya termasuk sisa-sisa makanan. Terlebih lagi, tiap tahunnya sekitar 1,3 milliar ton makanan dibuang begitu saja.
            
            Hal tersebut merupakan gambaran jelas bahwa food waste merupakan suatu isu yang penting.

            Selain menghabiskan makanan, salah satu alternatif lainnya untuk mengurangi jumlah makanan yang terbuang atau food waste yaitu dengan merencanakan masakan/ makanan yang ingin dimakan dan melakukan meal prep.
            """,
            whyGenerate: [
                WhyGenerate(
                    detailGenerate: "Untuk mengurangi sampah yang dihasilkan dari kemasan makanan"),
            ],
            howGenerate: [
                HowGenerate(
                    iconGenerate: "bento",
                    captionGenerate: "Masak makanan sendiri dan membawa menggunakan food countainer"),
            ],
            pointRewardGenerate: 0,
            penaltyGenerate: 0),
        ChallengeGenerate(
            challengeIDGenerate: "12",
            iconChallengeGenerate: "share",
            thumbnailChallengeGenerate: "ClimateChange",
            namaChallengeGenerate: "Share Ke Teman Kamu Mengenai Climate Change",
            descriptionGenerate: """
            Climate Change (perubahan iklim) adalah perubahan signifikan yang terjadi pada suhu, curah hujan, dan angin yang berlangsung dalam waktu yang cukup lama, bisa dalam satu dekade atau bahkan lebih.

            Climate change memberikan berbagai dampak buruk bagi kehidupan kita di bumi, seperti kerusakan ekosistem laut, masalah kebutuhan pangan, cuaca ekstrim dan bencana alam, mengganggu kesehatan dan penyebaran penyakit, dan lain-lain.

            Maka dari itu, sangat penting untuk setiap lapisan masyarakat mengetahui tentang climate change.
            """,
            whyGenerate: [
                WhyGenerate(
                    detailGenerate: "Menciptakan kesadaran bersama tentang dampak climate change yang sedang terjadi sekarang ini."),
                WhyGenerate(
                    detailGenerate: "Menciptakan kesadaran bersama tentang pentingnya melakukan sesuatu atau act terhadap isu yang ada, karena every single act is that matters dan make a huge difference."),
                WhyGenerate(
                    detailGenerate: "Memfokuskan pikiran orang bahwa hidup keberlanjutan (sustainable living) merupakan prioritas."),
            ],
            howGenerate: [
                HowGenerate(
                    iconGenerate: "share",
                    captionGenerate: "Share informasi tentang climate change ke teman-teman kalian"),
                HowGenerate(
                    iconGenerate: "share",
                    captionGenerate: "Mulai zero waste lifestyle dari diri sendiri untuk bisa menjadi contoh"),
            ],
            pointRewardGenerate: 0,
            penaltyGenerate: 0),
        ChallengeGenerate(
            challengeIDGenerate: "13",
            iconChallengeGenerate: "Compost",
            thumbnailChallengeGenerate: "LeftoverFood",
            namaChallengeGenerate: "Compost",
            descriptionGenerate: """
            Menurut laporan oleh World Bank, diperkirakan jumlah sampah akan terus meningkat hingga 70% di tahun 2050 apabila tidak ada aksi atau tindakan lebih lanjut terkait penanganan meminimalisir sampah.

            Persentase jumlah sampah di TPA yang semakin bertambah itu didominasi oleh sampah organik sebanyak 60% yang didalamnya termasuk sisa-sisa makanan.

            Dampaknya apa?

            Apabila hal ini terus terjadi dan tidak dikelola dengan bijak, tumpukan sampah organik yang tercampur dengan sampah lainnya akan menghasilkan bau tak sedap & gas metana yang berbahaya bagi lingkungan. Salah satu alternatif yang dapat dilakukan yaitu dengan melakukan kompos. Kompos adalah hasil penguraian segala sisa organik yang kita hasilkan.
            """,
            whyGenerate: [
                WhyGenerate(
                    detailGenerate: "Kompos berperan besar dalam kelangsungan hidup seperti menyuburkan tanah & tanaman."),
                WhyGenerate(
                    detailGenerate: "Kompos juga dapat menyelesaikan 50% masalah sampah rumah tangga."),
                WhyGenerate(
                    detailGenerate: "Supply bahan makanan kita lebih terjaga."),
            ],
            howGenerate: [
                HowGenerate(
                    iconGenerate: "Compost",
                    captionGenerate: "Belajar dan banyak cari tahu cara kompos."),
                HowGenerate(
                    iconGenerate: "Compost",
                    captionGenerate: "Menyadari kalau kompos itu proses belajar utk hal yg lebih baik."),
                HowGenerate(
                    iconGenerate: "Compost",
                    captionGenerate: "Jangan takut gagal atau salah, karena proses kompos sama dengan bereksperimen"),
            ],
            pointRewardGenerate: 0,
            penaltyGenerate: 0),
        ChallengeGenerate(
            challengeIDGenerate: "14",
            iconChallengeGenerate: "Habiskan Makanan",
            thumbnailChallengeGenerate: "LeftoverFood",
            namaChallengeGenerate: "Habiskan Makananmu",
            descriptionGenerate: """
            Indonesia diperkirakan menghasilkan 64 juta ton sampah tiap tahunnya. Berdasarkan data Kementrian Lingkungan Hidup dan Kehutanan (KLHK), persentase jenis sampah yang dihasilkan didominasi oleh sampah organik, yaitu mencapai 60% dari total sampah. Diikuti oleh sampah plastik sebanyak 14%, sampah kertas 9%, metal 4,3%, kaca, kayu dan bahan lainnya 12,7%. Salah satu contoh sampah organik yaitu sisa-sisa makanan.

            Dari 1/3 semua makanan yang di produksi di bumi tidak sepenuhnya sampai ke konsumen. Entah karena basi di perjalanan atau dibuang oleh konsumen di negara-negara kaya yang biasanya membeli secara berlebihan dan membuang begitu saja kelebihannya yang tidak mereka habiskan.

            Hal ini kurang lebih menghasilkan sekitar 1,3 miliar ton makanan yang bisa bernilai hampir $1 triliun. Sedangkan di sisi lain, jumlah orang yang menderita kelaparan (di dunia) mencapai hingga 800 juta jiwa lebih.

            Lalu, bagaimana? Untuk mengurangi jumlah sampah organik dan sampah sisa makanan atau food waste, salah satu cara yang paling mudah untuk dilakukan yaitu dengan menghabiskan makanan yang kamu makan.
            """,
            whyGenerate: [
                WhyGenerate(
                    detailGenerate: "Dengan menghabiskan makanan, artinya kita tidak menyia-nyiakan energi yang digunakan untuk produksi, panen, pengangkutan, dan pengemasan makanan yg terbuang."),
                WhyGenerate(
                    detailGenerate: "Sampah organik dari sisa makanan bisa menghasilkan gas etana (gas berbau & beracun) yang memiliki efek yg lebih buruk daripada karbondioksida."),
                WhyGenerate(
                    detailGenerate: "Mengurangi limbah sampah organik di TPA."),
            ],
            howGenerate: [
                HowGenerate(
                    iconGenerate: "Habisin Makanan",
                    captionGenerate: "Masak atau beli makanan sesuai dengan porsi makan kalian."),
            ],
            pointRewardGenerate: 0,
            penaltyGenerate: 0),
    ]
}
