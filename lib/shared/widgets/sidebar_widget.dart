import 'dart:developer';

import 'package:finances/core/app_colors.dart';
import 'package:finances/core/app_text_styles.dart';
import 'package:finances/home/home_page.dart';
import 'package:finances/rendimentos/rendimentos_page.dart';
import 'package:flutter/material.dart';

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 1000,
      color: AppColors.black,
      child: Material(
        type: MaterialType.transparency,
        child: _SideBarElements(context),
      ),
    );
  }
}

Widget _SideBarElements(BuildContext context) {
  return ListView(
    padding: EdgeInsets.zero,
    children: [
      Container(
        height: 50,
        width: 50,
        // color: AppColors.grey,
        child: Center(child: Text('Finances', style: AppTextStyles.title)),
      ),
      _SideBarButtonWidget(
        isSelected: true,
        icon: Icons.house,
        title: 'Resumo',
        onTap: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const HomePage())),
      ),
      _SideBarButtonWidget(
        isSelected: false,
        icon: Icons.money,
        title: 'Ativos',
        onTap: () => log('Ativos'),
      ),
      _SideBarButtonWidget(
        isSelected: false,
        icon: Icons.attach_money,
        title: 'Rendimentos',
        onTap: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const RendimentosPage())),
      ),
      _SideBarButtonWidget(
        isSelected: false,
        icon: Icons.settings,
        title: 'Settings',
        onTap: () => log('Settings'),
      ),
    ],
  );
}

class _SideBarButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool isSelected;

  const _SideBarButtonWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(25))),
      iconColor: AppColors.grey,
      textColor: AppColors.grey,
      hoverColor: AppColors.greyHover,
      selectedColor: AppColors.grey,
      selectedTileColor: AppColors.greySelected,
      selected: this.isSelected,
      onTap: onTap,
    );
  }
}
