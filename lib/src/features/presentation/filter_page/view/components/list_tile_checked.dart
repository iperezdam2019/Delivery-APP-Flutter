import 'package:flutter/material.dart';

// Commons Widgets
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';
// Colors
import 'package:delivery/src/colors/colors.dart';

class ListTileCheck extends StatefulWidget {
  final String? texto;
  final bool isActive;
  final VoidCallback func;

  ListTileCheck(
      {Key? key, this.texto, required this.isActive, required this.func})
      : super(key: key);
  @override
  _ListTileCheckState createState() => _ListTileCheckState();
}

class _ListTileCheckState extends State<ListTileCheck> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _listTiles(
            context: context,
            texto: widget.texto,
            isActive: widget.isActive,
            func: widget.func),
      ],
    );
  }
}

Widget _listTiles(
    {BuildContext? context,
    texto: String,
    bool isActive = false,
    VoidCallback? func}) {
  return Container(
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
      color: Theme.of(context!).dividerColor,
    ))),
    child: ListTile(
      onTap: func,
      title: headerText(
          text: texto,
          color: isActive ? orange : Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 17.0),
      trailing: isActive
          ? Icon(Icons.check, color: isActive ? orange : gris)
          : Text(''),
    ),
  );
}
