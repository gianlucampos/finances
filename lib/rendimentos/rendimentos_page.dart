// ignore_for_file: prefer_const_constructors

import 'package:finances/core/core.dart';
import 'package:flutter/material.dart';

class RendimentosPage extends StatelessWidget {
  const RendimentosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(text: "Rendimentos", style: AppTextStyles.heading40),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text.rich(TextSpan(
                        text: "Período", style: AppTextStyles.heading)),
                    Text.rich(
                        TextSpan(text: "Valor", style: AppTextStyles.heading)),
                    Text.rich(
                        TextSpan(text: "Nome", style: AppTextStyles.heading)),
                    SizedBox(width: 20)
                  ],
                ),
                Divider(),
                Column(
                  children: List.generate(10, (index) {
                    return LineWidget(index: index);
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LineWidget extends StatelessWidget {
  final int index;

  const LineWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text.rich(TextSpan(text: "$index", style: AppTextStyles.heading)),
        Text.rich(TextSpan(text: "$index", style: AppTextStyles.heading)),
        Text.rich(TextSpan(text: "$index", style: AppTextStyles.heading)),
        SizedBox(width: 20)
      ],
    );
  }
}
