import 'package:finances/core/app_colors.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.grey2,
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
          ListTile(
            leading: Icon(Icons.house),
            title: Text('Resumo'),
            iconColor: AppColors.grey,
            textColor: AppColors.grey,
            hoverColor: AppColors.greyHover,
            onTap: () => print('Resumo'),
          ),
          ListTile(
            leading: Icon(Icons.money),
            title: Text('Ativos'),
            iconColor: AppColors.grey,
            textColor: AppColors.grey,
            hoverColor: AppColors.greyHover,
            onTap: () => print('Resumo'),
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text('Rendimentos'),
            iconColor: AppColors.grey,
            textColor: AppColors.grey,
            hoverColor: AppColors.greyHover,
            onTap: () => print('Resumo'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            iconColor: AppColors.grey,
            textColor: AppColors.grey,
            hoverColor: AppColors.greyHover,
            onTap: () => print('Resumo'),
          ),
        ],
      ),
    );
  }
}
