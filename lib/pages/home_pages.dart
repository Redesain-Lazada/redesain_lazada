import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPromoBanner(),
            _buildSectionTitle('Promo Pengguna Baru!'),
            _buildPromoList(),
            _buildSectionWithMore('Mulai dari 1RB'),
            _buildProductList(),
          ],
        ),
      ),
    );
  }

  // AppBar
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      elevation: 0,
      title: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner),
            onPressed: () {},
          ),
          Expanded(child: _buildSearchBar()),
          _buildSmallButton('Cari', onPressed: () {}),
          _buildIconButton(Icons.wallet, onPressed: () {}),
          _buildIconButton(Icons.notifications_none, onPressed: () {}),
          _buildIconButton(Icons.chat, onPressed: () {}),
        ],
      ),
    );
  }

  // Search Bar
  Widget _buildSearchBar() {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: Colors.black),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari',
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  // Section Title
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  // Promo Banner
  Widget _buildPromoBanner() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'lib/desain_sistem/assets/images/banner.jpg',
          height: 150,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // Promo List
  Widget _buildPromoList() {
    final promos = [
      PromoCard(
        title: 'Rp400.000',
        oldPrice: 'Rp500.000',
        imagePath: 'lib/desain_sistem/assets/images/promo_1.png',
      ),
      PromoCard(
        title: 'Rp500.000',
        oldPrice: 'Rp600.000',
        imagePath: 'lib/desain_sistem/assets/images/promo_2.png',
      ),
      PromoCard(
        title: 'Rp20.000\nKhusus Pengguna Baru',
        oldPrice: '',
        imagePath: 'lib/desain_sistem/assets/images/promo_3.png',
      ),
    ];

    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: promos.length,
        itemBuilder: (context, index) => promos[index],
      ),
    );
  }

  // Product List with More Button
  Widget _buildSectionWithMore(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Lainnya >',
              style: TextStyle(color: Color.fromARGB(255, 78, 77, 77)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductList() {
    final products = [
      ProductCard(
        title: 'Xiaomi Gaming Monitor',
        price: 'Rp400.000',
        imagePath: 'lib/desain_sistem/assets/images/promo_3.png',
      ),
      ProductCard(
        title: 'Microphone',
        price: 'Rp400.000',
        imagePath: 'lib/desain_sistem/assets/images/promo_4.png',
      ),
      ProductCard(
        title: 'PS5 Controller',
        price: 'Rp400.000',
        imagePath: 'lib/desain_sistem/assets/images/promo_5.png',
      ),
    ];

    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) => products[index],
      ),
    );
  }

  // Reusable Buttons
  Widget _buildSmallButton(String text, {required VoidCallback onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 239, 238, 248),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, {required VoidCallback onPressed}) {
    return IconButton(
      icon: Icon(icon, color: const Color.fromARGB(255, 0, 0, 0)),
      onPressed: onPressed,
    );
  }
}

// PromoCard
class PromoCard extends StatelessWidget {
  final String title;
  final String oldPrice;
  final String imagePath;

  const PromoCard({
    super.key,
    required this.title,
    required this.oldPrice,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildImage(),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontSize: 14)),
          if (oldPrice.isNotEmpty)
            Text(
              oldPrice,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
                decoration: TextDecoration.lineThrough,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        imagePath,
        height: 80,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}

// ProductCard
class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String imagePath;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildImage(),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontSize: 14)),
          Text(
            price,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        imagePath,
        height: 100,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
