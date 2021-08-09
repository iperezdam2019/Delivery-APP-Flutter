import 'package:flutter/material.dart';

//Colors
import 'package:delivery/src/colors/colors.dart';

class PriceFilter extends StatefulWidget {
  @override
  _PriceFilterState createState() => _PriceFilterState();
}

class _PriceFilterState extends State<PriceFilter> {
  // Properties
  RangeValues _values = RangeValues(0.3, 1.0);
  int _minPrice = 0;
  int _maxPrice = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            '$_minPrice €',
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Container(
          width: 300.0,
          child: RangeSlider(
            activeColor: orange,
            inactiveColor: gris,
            values: _values,
            min: 0,
            max: 100.0,
            onChanged: (RangeValues newValues) {
              setState(() {
                _values = newValues;
                _minPrice = _values.start.round();
                _maxPrice = _values.end.round();
              });
            },
          ),
        ),
        Text(
          '$_maxPrice €',
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
