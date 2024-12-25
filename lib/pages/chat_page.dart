import 'package:flutter/material.dart';
import 'package:redesain_lazada/desain_sistem/styles/colors.dart';
import 'package:redesain_lazada/desain_sistem/styles/typography.dart';

class ChatPage extends StatelessWidget {
  final String accountName = 'TokoTeknoPro';
  final bool isOnline = true; // Ubah ke false untuk status offline

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: AssetImage(
                      'lib/desain_sistem/assets/images/tokotekno.png'), // Placeholder
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  accountName,
                  style: TypographyItems.h4,
                ),
                Text(
                  isOnline ? 'Online' : 'Offline',
                  style: TypographyItems.p6.copyWith(
                    color: isOnline
                        ? ColorsItem.secondary1
                        : Colors.grey, // Warna untuk status
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(child: _buildChatContent()),
          _buildChatInput(),
        ],
      ),
    );
  }

  // Chat Content
  Widget _buildChatContent() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildChatBubble(
          text: 'Halo Min',
          isFromUser: true,
        ),
        const SizedBox(height: 8),
        _buildChatBubble(
          text:
              'Halo, terimakasih telah menghubungi kami. Kami akan segera membalas pesanmu secepatnya. Untuk rincian produk secara lengkap, kamu bisa melihat di deskripsi ya, kak. Jangan lupa perhatikan kriteria jumlah minimal pembelian agar bisa kami proses.',
          isFromUser: false,
        ),
      ],
    );
  }

  // Chat Bubble
  Widget _buildChatBubble({required String text, required bool isFromUser}) {
    return Align(
      alignment: isFromUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isFromUser ? ColorsItem.secondary1 : Colors.white,
          border: isFromUser ? null : Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10),
        ),
        constraints: const BoxConstraints(maxWidth: 250),
        child: Text(
          text,
          style: TypographyItems.p4.copyWith(
            color: isFromUser ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  // Chat Input
  Widget _buildChatInput() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: Border(top: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Wrap(
                  spacing: 8,
                  children: [
                    _buildTemplateButton('Hi, Barang ini masih tersedia?'),
                    _buildTemplateButton('Bisa dikirim hari ini?'),
                    _buildTemplateButton('Halo, Terimakasih!'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.add, color: Colors.grey),
                onPressed: () {
                  // Tambahkan tindakan untuk menambahkan lampiran
                },
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Ketik pesan...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.send, color: ColorsItem.secondary2),
                onPressed: () {
                  // Tambahkan tindakan untuk mengirim pesan
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Template Button
  Widget _buildTemplateButton(String text) {
    return ElevatedButton(
      onPressed: () {
        // Tambahkan logika untuk memasukkan teks template
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey.shade300,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        text,
        style: TypographyItems.p5,
      ),
    );
  }
}
