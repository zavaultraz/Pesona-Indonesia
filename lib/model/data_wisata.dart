class TempatWisata {
  String nama;
  String lokasi;
  String harga;
  String deskripsi;
  String gambar;
  String jam;
  String rating;
  List<String> urlGambar;

  // Constructor
  TempatWisata({
    required this.nama,
    required this.lokasi,
    required this.harga,
    required this.deskripsi,
    required this.gambar,
    required this.jam,
    required this.rating,
    required this.urlGambar,
  });
  //dummy data

}
var wisataTempat = [
  TempatWisata(
      nama: 'Jalan Putih',
      lokasi: 'Bandung',
      harga: 'Rp 50.000',
      deskripsi: 'Tempat wisata dengan pemandangan indah dan udara segar.',
      gambar: 'assets/images/panorama.jpg',
      jam: '08:00 - 17:00',
      rating: '4.5',
      urlGambar: [
        'https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        'https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
      ]),
  TempatWisata(
      nama: 'Stone Garden',
      lokasi: 'Pamijahan',
      harga: 'Rp 10.000',
      deskripsi:
      'Tempat wisata dengan pemandangan batu yang mewah dan pemandangan yang bagus.',
      gambar: 'assets/images/stone-garden.jpg',
      jam: '08:00 - 17:00',
      rating: '4.5',
      urlGambar: [
        'https://example.com/jalan_putih.jpg',
        'https://example.com/jalan_putih.jpg'
      ]),
];
