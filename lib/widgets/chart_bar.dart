import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingTotal;

  ChartBar(this.label, this.spendingAmount, this.spendingTotal);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Column(children: [
        Container(
          height: constraints.maxHeight * 0.15,
          child: FittedBox(
            child: Text('\$${spendingAmount.toStringAsFixed(0)}'),
          ),
        ),
        SizedBox(
          height: constraints.maxHeight * 0.05,
        ),
        Container(
          height: constraints.maxHeight * 0.5,
          width: 10,
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0),
                color: Color.fromRGBO(220, 220, 220, 4),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            FractionallySizedBox(
              heightFactor: spendingTotal,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ]),
        ),
        SizedBox(
          height: constraints.maxHeight * 0.05,
        ),
        FittedBox(
          child: Container(
            height: constraints.maxHeight * 0.15,
            child: Text(label),
          ),
        ),
      ]);
    });
  }
}
