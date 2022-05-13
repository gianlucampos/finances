import 'dart:developer';

import 'package:finances/core/app_colors.dart';
import 'package:finances/core/app_text_styles.dart';
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
          Container(
            height: 50,
            width: 50,
            // color: AppColors.grey,
            child: Center(child: Text('Finances', style: AppTextStyles.title)),
          ),
          _DrawerButtonWidget(
            icon: Icons.house,
            title: 'Resumo',
            onTap: () => log('Resumo'),
          ),
          _DrawerButtonWidget(
            icon: Icons.money,
            title: 'Ativos',
            onTap: () => log('Ativos'),
          ),
          _DrawerButtonWidget(
            icon: Icons.attach_money,
            title: 'Rendimentos',
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const RendimentosPage())),
          ),
          _DrawerButtonWidget(
            icon: Icons.settings,
            title: 'Settings',
            onTap: () => log('Settings'),
          ),
        ],
      ),
    );
  }
}

class _DrawerButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _DrawerButtonWidget({
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
      hoverColor: AppColors.greySelected,
      onTap: onTap,
    );
  }
}
