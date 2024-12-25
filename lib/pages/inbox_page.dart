import 'package:flutter/material.dart';
import 'package:redesain_lazada/desain_sistem/assets/images/images.dart';
import 'package:redesain_lazada/desain_sistem/styles/colors.dart';
import 'package:redesain_lazada/desain_sistem/styles/typography.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Inbox',
          style: TypographyItems.h2,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _buildChatItem(
            context: context,
            profileImage: ImagesItem.promo6,
            name: 'TokoTeknoPro',
            previewText:
                'Halo kak Dina! Terimakasih sudah berbelanja di TokoTeknoPro',
          ),
          _buildChatItem(
            context: context,
            profileImage: ImagesItem.promo7,
            name: 'Anker Indonesia',
            previewText:
                'Halo kak Dina! Terimakasih sudah berbelanja di Anker Indonesia',
          ),
          _buildChatItem(
            context: context,
            profileImage: ImagesItem.promo8,
            name: 'Dunia Komputer',
            previewText:
                'Halo kak Dina! Terimakasih sudah berbelanja di Dunia Komputer',
          ),
        ],
      ),
    );
  }

  Widget _buildChatItem({
    required BuildContext context,
    required String profileImage,
    required String name,
    required String previewText,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: ColorsItem.secondary2,
            width: 2,
          ),
        ),
        child: ClipOval(
          child: Image.asset(
            profileImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        name,
        style: TypographyItems.h4,
      ),
      subtitle: Text(
        previewText,
        style: TypographyItems.p4,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: () {
        Navigator.pushNamed(
          context,
          '/chat',
        );
      },
    );
  }
}
