import 'package:finances/core/core.dart';
import 'package:finances/shared/models/rendimento.dart';
import 'package:finances/shared/widgets/sidebar_widget.dart';
import 'package:flutter/material.dart';

List<RendimentoModel> listRendimentos = [
  RendimentoModel(periodo: '01/01/2022', valor: 58.00, nome: 'IRDM11'),
  RendimentoModel(periodo: '01/01/2022', valor: 12.00, nome: 'HGLG11'),
  RendimentoModel(periodo: '01/01/2022', valor: 5.00, nome: 'XPLG11'),
  RendimentoModel(periodo: '01/01/2022', valor: 34.00, nome: 'MXRF11'),
  RendimentoModel(periodo: '01/01/2022', valor: 25.00, nome: 'FIIB11'),
];

class RendimentosPage extends StatelessWidget {
  const RendimentosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Row(
          children: [
            SideBarWidget(),
            Expanded(child: _Table()),
          ],
        ));
  }
}

class _Table extends StatelessWidget {
  const _Table({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 250, vertical: 15),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.black, borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 95, vertical: 25),
                child: Text("Rendimentos", style: AppTextStyles.heading40),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Período", style: AppTextStyles.headingBold),
                  Text("Valor", style: AppTextStyles.headingBold),
                  Text("Nome", style: AppTextStyles.headingBold),
                ],
              ),
              _CustomDivider(),
              Column(
                children: listRendimentos
                    .map((i) => new _TableBody(rendimento: i))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _TableBody extends StatelessWidget {
  final RendimentoModel rendimento;

  _TableBody({
    Key? key,
    required this.rendimento,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(rendimento.periodo, style: AppTextStyles.heading),
            Text("R\$ ${rendimento.valor.toStringAsFixed(2)}",
                style: AppTextStyles.heading),
            Text(rendimento.nome, style: AppTextStyles.heading),
          ],
        ),
        _CustomDivider(),
      ],
    );
  }
}

class _CustomDivider extends StatelessWidget {
  const _CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25.0, bottom: 20.0),
      child: Divider(
        height: 1,
        thickness: 1,
        color: AppColors.greySelected,
      ),
    );
  }
}
