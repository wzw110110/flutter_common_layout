import 'package:flutter/material.dart';

class ColorGame extends StatefulWidget {
  const ColorGame({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ColorGameState();
  }

}

class _ColorGameState extends State<ColorGame> {
  final _colors = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.black,
  ];

  var _slot = 0;

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerMove: (event) {
        final x = event.position.dx;
        print(x);
        if (x > (_slot+1) * BoxColor.width) {
          if (_slot == _colors.length-1) return;
          setState(() {
            final c = _colors[_slot];
            _colors[_slot] = _colors[_slot+1];
            _colors[_slot+1] = c;
            _slot++;
          });
        } else if (x < _slot * BoxColor.width) {
          if (_slot == 0) return;
          setState(() {
            final c = _colors[_slot];
            _colors[_slot] = _colors[_slot-1];
            _colors[_slot-1] = c;
            _slot--;
          });
        }
      },
      child: Stack(
          children: List.generate(_colors.length, (index) {
            return BoxColor(
              color: _colors[index],
              x: index * BoxColor.width,
              y: 200,
              key: ValueKey(_colors[index]),
              onDrag: (Color color) {
                final index = _colors.indexOf(color);
                print("on drag $index");
                _slot = index;
              },
            );
          })),
    );
  }
}

class BoxColor extends StatelessWidget {
  static const width = 50.0;
  static const height = 50.0;
  static const margin = 2.0;

  final Color color;
  final double x, y;
  final Function(Color) onDrag;

  const BoxColor(
      {super.key, required this.color, required this.x, required this.y,required this.onDrag});

  @override
  Widget build(BuildContext context) {
    final container =  Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.0),color: color),
      margin: EdgeInsets.all(8.0),
      width: width - margin *2,
      height: height - margin *2,
    );
    return AnimatedPositioned(
        duration: Duration(milliseconds: 100),
        left: x,
        top: y,
        child: Draggable(
          onDragStarted: () => onDrag(color),
          feedback: container,
          childWhenDragging: Visibility(visible: false, child: container),
          child: container,
        ));
  }
}