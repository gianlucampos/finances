// ignore_for_file: prefer_const_constructors
import 'dart:developer';

import 'package:finances/core/app_colors.dart';
import 'package:finances/home/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        child: Column(
          children: [
            Row(
              children: const [
                Flexible(child: ContainerWidget()),
                SizedBox(width: 20),
                Flexible(child: ContainerWidget()),
              ],
            ),
          ],
        ),
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
    return Container(
      color: AppColors.greySquare,
      width: 550,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
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
