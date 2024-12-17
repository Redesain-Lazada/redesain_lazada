import 'package:flutter/material.dart';

class CartPages extends StatelessWidget {
  CartPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Troli Saya'),
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 1,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search, color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.delete, color: Colors.red),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildCartItem(), // Item di keranjang
            const Divider(thickness: 6, color: Colors.grey),
            _buildCenteredHistory(), // Lihat Riwayat di Tengah
            const SizedBox(height: 10),
            _buildVoucherSection(), // Input Voucher
            const SizedBox(height: 10),
            _buildRecommendedProducts(), // Produk Rekomendasi
          ],
        ),
      ),
    );
  }

  Widget _buildCartItem() {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Baris atas: LazMall dan Nama Brand
          Row(
            children: const [
              Chip(
                label: Text('LazMall'),
                backgroundColor: Colors.red,
                labelStyle: TextStyle(color: Colors.white),
                visualDensity: VisualDensity(horizontal: -2, vertical: -2),
              ),
              SizedBox(width: 5),
              Text('Xiaomi', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 8), // Memberi jarak ke bawah LazMall

          // Isi Item: Checkbox, Gambar, dan Deskripsi
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(value: false, onChanged: (value) {}),
              Image.asset(
                'lib/desain_sistem/assets/images/promo_3.png',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Xiaomi Gaming Monitor G27i Panel IPS 165Hz 1ms FHD Gaming',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Hitam v',
                      style: TextStyle(color: Colors.black87, fontSize: 12),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rp1.900.000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              'Rp1.900.000 Harga Diskon',
                              style: TextStyle(color: Colors.red, fontSize: 12),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            _buildQuantityButton(Icons.remove),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Text('1'),
                            ),
                            _buildQuantityButton(Icons.add),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuantityButton(IconData icon) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(4),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon, size: 18),
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
      ),
    );
  }

  Widget _buildCenteredHistory() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Center(
        child: Text(
          'Lihat Riwayat Saya',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }

  Widget _buildVoucherSection() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Masukkan Code Voucher',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendedProducts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(12),
          child: Text(
            'Produk Rekomendasi',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildProductCard('lib/desain_sistem/assets/images/promo_2.png',
                  'Rexus GX 300 V2', 220, 300),
              _buildProductCard('lib/desain_sistem/assets/images/promo_1.png',
                  'Vortex Series INNO X2', 220, 300),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProductCard(
      String imagePath, String productName, int sold, int rating) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(left: 12, right: 6),
      child: Card(
        elevation: 3,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(imagePath,
                    height: 100, width: double.infinity, fit: BoxFit.cover),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Chip(
                        label: Text('LazMall'),
                        backgroundColor: Colors.red,
                        labelStyle: TextStyle(color: Colors.white),
                        visualDensity:
                            VisualDensity(horizontal: -2, vertical: -2),
                      ),
                      Text(productName,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          Text('4.9 ($rating) $sold Terjual',
                              style: const TextStyle(fontSize: 10)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 8,
              right: 8,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
