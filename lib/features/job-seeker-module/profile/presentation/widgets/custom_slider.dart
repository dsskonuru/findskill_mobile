import 'package:flutter/material.dart';

import 'package:find_skill/features/job-seeker-module/profile/presentation/widgets/custom_slider_thumb_circle.dart';
import 'package:find_skill/features/job-seeker-module/profile/presentation/widgets/custom_track_shape.dart';

class CustomSlider extends StatefulWidget {
  final BoxConstraints constraints;
  const CustomSlider({
    Key? key,
    required this.constraints,
  }) : super(key: key);
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _value = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.blue.withOpacity(1),
        inactiveTrackColor: Theme.of(context).colorScheme.secondaryVariant,
        trackHeight: 4.0,
        trackShape: CustomTrackShape(),
        thumbShape: CustomSliderThumbCircle(constraints: widget.constraints),
        overlayColor: Colors.white.withOpacity(.4),
        activeTickMarkColor: Colors.white,
        inactiveTickMarkColor: Colors.red.withOpacity(.7),
      ),
      child: Slider(
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          }),
    );
  }
}
