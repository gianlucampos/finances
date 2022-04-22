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
      body: Card(
        child: Container(
          width: 500,
          height: 500,
          color: AppColors.greySquare,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                "Contas",
                style: TextStyle(color: AppColors.white),
              ),
              Text(
                "R\$ 12.134,49",
                style: TextStyle(color: AppColors.white, fontSize: 48),
              ),
            ],
          ),
        ),
      ),
      drawer: const DrawerWidget(),
    );
  }
}
