import 'package:flutter/material.dart';
import 'package:redesain_lazada/desain_sistem/styles/colors.dart';
import 'package:redesain_lazada/desain_sistem/styles/typography.dart';

class AccountPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ColorsItem.warna2,
              ColorsItem.primary2,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                // Profil
                _buildProfileSection(),
                const SizedBox(height: 50),
                // Menu Grid
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildMenuItem(Icons.favorite, "Wishlist"),
                    _buildMenuItem(Icons.store, "Followed Store"),
                    _buildMenuItem(Icons.access_time, "Recently"),
                    _buildMenuItem(Icons.card_giftcard, "Voucher"),
                  ],
                ),
                const SizedBox(height: 50),
                // Order Section
                _buildOrderSection(),
                const SizedBox(height: 50),
                // Wallet Section
                _buildWalletSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileSection() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(
              'lib/desain_sistem/assets/images/iconlazada.jpg',
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dina Supriyadi",
                style: TypographyItems.p1,
              ),
              const SizedBox(height: 8),
              Text(
                "Settings",
                style: TypographyItems.p3,
              ),
            ],
          ),
          const Spacer(),
          Icon(Icons.settings, color: Colors.grey[600], size: 28),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey[600]!, width: 2),
          ),
          child: Center(
            child: Icon(
              icon,
              color: ColorsItem.primary,
              size: 28,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TypographyItems.p5,
        ),
      ],
    );
  }

  Widget _buildOrderSection() {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Order",
            style: TypographyItems.p2,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildOrderItem(Icons.wallet, "Pembayaran"),
              _buildOrderItem(Icons.local_shipping, "Pengiriman"),
              _buildOrderItem(Icons.assignment_return, "Pengembalian"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOrderItem(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 40, color: ColorsItem.primary),
        SizedBox(height: 8),
        Text(
          label,
          style: TypographyItems.p4,
        ),
      ],
    );
  }

  Widget _buildWalletSection() {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lazada Wallet",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildWalletItem("0.00", "THB", "Top-Up"),
              _buildWalletItem("2", "Payment", "Options"),
              _buildWalletItem("", "Transaction", "History"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWalletItem(String balance, String currency, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          balance,
          style: TypographyItems.p2,
        ),
        SizedBox(height: 6),
        Text(
          currency,
          style: TypographyItems.p3,
        ),
        SizedBox(height: 6),
        Text(
          label,
          style: TypographyItems.p4,
        ),
      ],
    );
  }
}
