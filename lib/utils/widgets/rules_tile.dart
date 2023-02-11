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
      child: ReadMoreText(
        textAlign: TextAlign.start,
        "$ruleNo $rule",
        style: GoogleFonts.poppins(color: Colors.grey.shade500),
        trimMode: TrimMode.Line,
        trimLines: 1,
        colorClickableText: Colors.blue,
        trimExpandedText: "Show Less",
        trimCollapsedText: "Show More",
      ),
    );
  }
}
