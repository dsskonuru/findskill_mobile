import 'package:flutter/material.dart';

class CustomSliderThumbCircle extends SliderComponentShape {
  final BoxConstraints constraints;

  final double thumbRadius = 48 * .4;
  final int min = 0;
  final int max = 1750;
  late double centerLine;

  final List<double> _distances = [
    0, //0
    57.6, //500
    115.2, //750
    172.8, //1000
    230.4, //1250
    288, //1500
    345.6, //1750
  ];

  String lineValue = "";

  CustomSliderThumbCircle({
    required this.constraints,
  }) {
    centerLine = (constraints.maxHeight) / 2;
  }

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    final Canvas canvas = context.canvas;

    final fillPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = Colors.blue
      // ..shader = RadialGradient(
      //   colors: [
      //     Colors.green,
      //     Colors.orange,
      //   ],
      // ).createShader(Rect.fromCircle(
      //   center: center,
      //   radius: thumbRadius,
      // ))
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, thumbRadius, fillPaint);
    canvas.drawCircle(center, thumbRadius, borderPaint);

    final TextSpan sliderText = TextSpan(
      style: TextStyle(
        fontSize: thumbRadius * .8,
        fontWeight: FontWeight.w400,
        color: Colors.black, //Text Color of Value on Thumb
      ),
      text: getValue(value),
    );

    final TextPainter sliderTextPainter = TextPainter(
        text: sliderText,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    sliderTextPainter.layout();
    final Offset textCenter = Offset(center.dx - (sliderTextPainter.width / 2),
        center.dy - (sliderTextPainter.height / 2));

    sliderTextPainter.paint(canvas, textCenter);

    final distancedTravelledLinePaint = Paint()
      ..color = Colors.grey.withOpacity(0.5)
      ..strokeWidth = 2;

    // for (var i = 0; i < screenWith.toDouble(); i++) {
    //   // if (_distances.contains(i)) {
    //   //   canvas.drawLine(Offset(i.toDouble(), 0), Offset(i.toDouble(), 60),
    //   //       distancedTravelledLinePaint);
    //   //   distancedTravelledLineTextPainter.paint(
    //   //       canvas, Offset(i.toDouble(), 80));
    //   // }
    //   print(i);
    //   if (_distances.contains(i)) {
    //     canvas.drawLine(Offset(i.toDouble(), 0), Offset(i.toDouble(), 60),
    //         distancedTravelledLinePaint);
    //     distancedTravelledLineTextPainter.paint(
    //         canvas, Offset(i.toDouble(), 80));
    //   }
    // }

    for (final i in _distances) {
      canvas.drawLine(Offset(i.toDouble(), centerLine + 16),
          Offset(i.toDouble(), centerLine + 30), distancedTravelledLinePaint);
      lineValue = i.toString();

      final TextSpan distancedTravelledLineText = TextSpan(
        style: TextStyle(
          fontSize: thumbRadius * .8,
          fontWeight: FontWeight.w700,
          color: sliderTheme.thumbColor, //Text Color of Value on Thumb
        ),
        text: i.toInt().toString(),
      );

      final TextPainter distancedTravelledLineTextPainter = TextPainter(
          text: distancedTravelledLineText,
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr);
      distancedTravelledLineTextPainter.layout();
      distancedTravelledLineTextPainter.paint(
          canvas, Offset(i.toDouble() - 10, centerLine + 40));
    }
  }

  String getValue(double value) {
    return (min + (max - min) * value).round().toString();
  }
}
