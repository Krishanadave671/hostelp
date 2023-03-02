import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hostelp/mytheme.dart';

class TotalPriceTile extends StatelessWidget {
  const TotalPriceTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text(
                "Total",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: lightColorScheme.primary,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 180,
              ),
              Text(
                "Rs. 10000",
                style: Theme.of(context).textTheme.labelMedium,
              )
            ],
          ),
        ),
      ),
    );
  }
}
