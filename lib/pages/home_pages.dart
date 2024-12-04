import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.qr_code_scanner, color: Colors.grey),
              onPressed: () {
                // Aksi QR Code Scanner
              },
            ),
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Cari',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 8),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.camera_alt, color: Colors.grey),
                      onPressed: () {
                        // Aksi kamera
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 8),
            ElevatedButton(
              onPressed: () {
                // Aksi tombol "Cari"
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.orangeAccent,
                textStyle: TextStyle(fontSize: 14),
              ),
              child: Text('Cari'),
            ),
            SizedBox(width: 8),
            IconButton(
              icon: Icon(Icons.wallet, color: Colors.grey),
              onPressed: () {
                // Aksi wallet
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications_none, color: Colors.grey),
              onPressed: () {
                // Aksi notifikasi
              },
            ),
            IconButton(
              icon: Icon(Icons.more_horiz, color: Colors.grey),
              onPressed: () {
                // Aksi lainnya
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner Promo
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/Rectangle 3.png',
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Promo Pengguna Baru
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Promo Pengguna Baru!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  PromoCard(
                    title: 'Rp400.000',
                    oldPrice: 'Rp500.000',
                    imagePath: 'assets/images/Rectangle 13.png',
                  ),
                  PromoCard(
                    title: 'Rp500.000',
                    oldPrice: 'Rp600.000',
                    imagePath: 'assets/images/Rectangle 14.png',
                  ),
                  PromoCard(
                    title: 'Rp20.000\nKhusus Pengguna Baru',
                    oldPrice: '',
                    imagePath: 'assets/images/gift.png',
                  ),
                ],
              ),
            ),

            // Mulai dari 1RB
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mulai dari 1RB',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Lainnya >',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ProductCard(
                    title: 'Xiaomi Gaming Monitor',
                    price: 'Rp400.000',
                    imagePath: 'assets/images/Rectangle 21.png',
                  ),
                  ProductCard(
                    title: 'Microphone',
                    price: 'Rp400.000',
                    imagePath: 'assets/images/Rectangle 22.png',
                  ),
                  ProductCard(
                    title: 'PS5 Controller',
                    price: 'Rp400.000',
                    imagePath: 'assets/images/Rectangle 23.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget PromoCard
class PromoCard extends StatelessWidget {
  final String title;
  final String oldPrice;
  final String imagePath;

  const PromoCard({
    required this.title,
    required this.oldPrice,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          if (oldPrice.isNotEmpty)
            Text(
              oldPrice,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.red,
                  decoration: TextDecoration.lineThrough),
            ),
        ],
      ),
    );
  }
}

// Widget ProductCard
class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String imagePath;

  const ProductCard({
    required this.title,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(price, style: TextStyle(fontSize: 14, color: Colors.green)),
        ],
      ),
    );
  }
}
