import 'package:flutter/material.dart';
import 'package:redesain_lazada/desain_sistem/styles/colors.dart';
import 'package:redesain_lazada/desain_sistem/styles/typography.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifikasi',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: ColorsItem.primary,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTabSection(),
            const SizedBox(height: 16),
            _buildSectionTitle('Terbaru'),
            const SizedBox(height: 10),
            _buildNotificationItem(
              icon: Icons.shopping_bag, // Ikon keranjang belanja
              title: 'Belanja',
              descriptionTitle: 'Pesananmu butuh tambahan waktu',
              description:
                  'Penjual mengajukan perpanjangan waktu dikarenakan hari libur nasional.',
            ),
            const SizedBox(height: 16),
            _buildNotificationItem(
              icon: Icons.percent, // Ikon diskon
              title: 'Promo',
              descriptionTitle: 'Diskon hingga 50%',
              description: 'Nikmati diskon menarik untuk semua kategori.',
            ),
          ],
        ),
      ),
    );
  }

  // Tab Section
  Widget _buildTabSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Semua',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: ColorsItem.primary,
          ),
        ),
        Text(
          'Transaksi Berlangsung',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: ColorsItem.primary2,
          ),
        ),
        Text(
          'Promo',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: ColorsItem.primary2,
          ),
        ),
        Text(
          'Feed',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: ColorsItem.primary2,
          ),
        ),
      ],
    );
  }

  // Section Title
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: ColorsItem.primary,
      ),
    );
  }

  // Notification Item
  Widget _buildNotificationItem({
    required IconData icon, // Tambahkan parameter ikon
    required String title,
    required String descriptionTitle,
    required String description,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsItem.warna1,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon,
              color: ColorsItem.primary, size: 24), // Ikon di sebelah kiri
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: ColorsItem.primary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  descriptionTitle,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ColorsItem.primary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: ColorsItem.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
