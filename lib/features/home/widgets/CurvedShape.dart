import 'package:flutter/material.dart';
import 'package:hostelp/utils/colors.dart';

const CURVE_HEIGHT = 160.0;
const ANOTHER_HEIGHT = CURVE_HEIGHT + 120;

class CurvedShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: CURVE_HEIGHT,
      child: CustomPaint(
        painter: _MyPainter(),
      ),
    );
  }
}

class _MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = true
      ..color = themePurple;

    Offset circleCenter = Offset(size.width / 2, size.height + ANOTHER_HEIGHT);

    Offset topLeft = Offset(0, 0);
    Offset bottomLeft = Offset(0, size.height * 1.5);
    Offset topRight = Offset(size.width, 0);
    Offset bottomRight = Offset(size.width, size.height * 1.4);

    Offset rightCurveControlPoint =
        Offset(circleCenter.dx * 1.1, size.height + ANOTHER_HEIGHT);

    Path path = Path()
      ..moveTo(topLeft.dx,
          topLeft.dy) // this move isn't required since the start point is (0,0)
      ..lineTo(bottomLeft.dx, bottomLeft.dy)
      ..quadraticBezierTo(rightCurveControlPoint.dx, rightCurveControlPoint.dy,
          bottomRight.dx, bottomRight.dy)
      ..lineTo(topRight.dx, topRight.dy)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
