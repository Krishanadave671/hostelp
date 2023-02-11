import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class RulesTile extends StatelessWidget {
  final String rule;
  final int ruleNo;

  const RulesTile({super.key, required this.rule, required this.ruleNo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 10),
      child: Row(
        children: [
          Text(
            ruleNo.toString(),
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.grey.shade500),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              rule,
              maxLines: 4,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.grey.shade500),
            ),
          )
        ],
      ),
    );
  }
}
