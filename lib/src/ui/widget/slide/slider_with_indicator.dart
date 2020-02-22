import 'package:flutter/material.dart';

class SliderWithIndicatior extends StatefulWidget {
  @override
  _SliderWithIndicatiorState createState() => _SliderWithIndicatiorState();
}

class _SliderWithIndicatiorState extends State<SliderWithIndicatior> {
  int _current = 0;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Slider(value: null, onChanged: null),
        Row(
          children: <Widget>[
            
          ],
        )
      ],
    );
  }
}