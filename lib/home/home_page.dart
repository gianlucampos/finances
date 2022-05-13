import 'dart:developer';

import 'package:finances/core/core.dart';
import 'package:finances/home/widgets/drawer_widget.dart';
import 'package:finances/shared/widgets/sidebar_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const DrawerWidget(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SideBarWidget(),
          ContainerWidget(),
          ContainerWidget(),
        ],
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: Container(
        color: AppColors.greySquare,
        width: 550,
        height: 340,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Contas",
                style: TextStyle(color: AppColors.white),
              ),
              Text(
                "R\$ 31.000,00",
                style: TextStyle(color: AppColors.white, fontSize: 48),
              ),
              CardWidget(
                  title: 'Nubank',
                  value: '12.500,00',
                  iconColor: AppColors.purple),
              CardWidget(
                title: 'Inter',
                value: '5.000,00',
                iconColor: Colors.orange,
              ),
              CardWidget(
                title: 'Digio',
                value: '18.500,00',
                iconColor: Colors.blueAccent,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: AppColors.background,
                      child: TextButton(
                        onPressed: () {
                          log('message');
                        },
                        child: Text(
                          "VER TUDO",
                          style: TextStyle(color: AppColors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final String value;
  final Color iconColor;

  const CardWidget(
      {Key? key,
      required this.title,
      required this.value,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.background,
      child: ListTile(
        textColor: AppColors.white,
        iconColor: AppColors.white,
        leading: Icon(Icons.rectangle, color: iconColor),
        title: Text(title),
        subtitle: Text('R\$ $value'),
        trailing: const Icon(Icons.keyboard_arrow_right),
        onTap: () => log('message'),
      ),
    );
  }
}
