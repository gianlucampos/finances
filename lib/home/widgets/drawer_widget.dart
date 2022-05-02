import 'dart:developer';

import 'package:finances/core/app_colors.dart';
import 'package:finances/rendimentos/rendimentos_page.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: AppColors.grey2,
          //   ),
          //   child: Text(
          //     'Finances',
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 24,
          //     ),
          //   ),
          // ),
          _ButtonTileWidget(
            icon: Icons.house,
            title: 'Resumo',
            onTap: () => log('Resumo'),
          ),
          _ButtonTileWidget(
            icon: Icons.money,
            title: 'Ativos',
            onTap: () => log('Ativos'),
          ),
          _ButtonTileWidget(
            icon: Icons.attach_money,
            title: 'Rendimentos',
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const RendimentosPage())),
          ),
          _ButtonTileWidget(
            icon: Icons.settings,
            title: 'Settings',
            onTap: () => log('Settings'),
          ),
        ],
      ),
    );
  }
}

class _ButtonTileWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _ButtonTileWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      iconColor: AppColors.grey,
      textColor: AppColors.grey,
      hoverColor: AppColors.greyHover,
      onTap: onTap,
    );
  }
}
