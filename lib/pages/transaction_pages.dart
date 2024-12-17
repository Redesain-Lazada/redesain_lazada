import 'package:flutter/material.dart';

class TransactionPages extends StatelessWidget {
  const TransactionPages({super.key});

  final List<TransactionItem> transactionItems = const [
    TransactionItem(
      date: '15 Sep 2024',
      name: 'Xiaomi Gaming Monitor G27i Panel IPS 165Hz 1ms FHD Gaming',
      quantity: 1,
      totalPrice: 1900000,
      rating: 5,
      image: 'lib/desain_sistem/assets/images/promo_3.png',
    ),
    TransactionItem(
      date: '15 Sep 2024',
      name: 'Rexus Snare CM / CM-10 Microphone Condenser',
      quantity: 1,
      totalPrice: 250000,
      rating: 4,
      image: 'lib/desain_sistem/assets/images/promo_4.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Tombol Kembali
          onPressed: () {
            Navigator.pop(context); // Fungsi untuk kembali
          },
        ),
        title: const Text('Transaksi'),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        children: [
          _buildTabBar(),
          Expanded(
            child: ListView.builder(
              itemCount: transactionItems.length,
              itemBuilder: (context, index) {
                return TransactionItemWidget(
                  transactionItem: transactionItems[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildTabButton('Aktivitas', () {
            // Logika Tab Aktivitas
          }),
          _buildTabButton('Produk', () {
            // Logika Tab Produk
          }),
          _buildTabButton('Rating', () {
            // Logika Tab Rating
          }),
        ],
      ),
    );
  }

  Widget _buildTabButton(String title, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:
            const Color.fromARGB(255, 227, 225, 225), // Warna latar putih
        foregroundColor: Colors.black, // Warna teks hitam
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0, // Hilangkan bayangan agar konsisten
      ),
      child: Text(title),
    );
  }
}

class TransactionItem {
  final String date;
  final String name;
  final int quantity;
  final int totalPrice;
  final int rating;
  final String image;

  const TransactionItem({
    required this.date,
    required this.name,
    required this.quantity,
    required this.totalPrice,
    required this.rating,
    required this.image,
  });
}

class TransactionItemWidget extends StatelessWidget {
  final TransactionItem transactionItem;

  const TransactionItemWidget({super.key, required this.transactionItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    transactionItem.image,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover, // Agar gambar proporsional
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transactionItem.date,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        transactionItem.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text('${transactionItem.quantity} barang'),
                      const SizedBox(height: 8),
                      Text(
                        'Total Belanja: Rp${transactionItem.totalPrice}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Logika tombol "Selesai"
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text('Selesai'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: List.generate(
                5,
                (index) => Icon(
                  index < transactionItem.rating
                      ? Icons.star
                      : Icons.star_border,
                  color: Colors.amber,
                  size: 20,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  // Logika tombol "Beli Lagi"
                },
                child: const Text('Beli Lagi'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
