import 'package:delivery/src/features/presentation/commons_widgets/buttons/roundend_button.dart';
import 'package:flutter/material.dart';
//Colors
import 'package:delivery/src/colors/colors.dart';
//Components
import 'package:delivery/src/features/presentation/tabs/my_order_tab/view/components/empty_order_view.dart';
// Commons Widgets
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';

class MyOrderTab extends StatefulWidget {
  MyOrderTab({Key? key}) : super(key: key);

  @override
  _MyOrderTabState createState() => _MyOrderTabState();
}

class _MyOrderTabState extends State<MyOrderTab> {
  final emptyOrderState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgGreyPage,
        body: emptyOrderState
            ? EmptyOrderView()
            : CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    elevation: 0.5,
                    leading: Text(''),
                    backgroundColor: white,
                    centerTitle: true,
                    title: headerText(
                        text: 'My Order',
                        color: primaryColor,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SliverList(
                      delegate: SliverChildListDelegate([
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          _orders(context),
                          SizedBox(height: 40.0),
                          _checkOutResume(context)
                        ],
                      ),
                    )
                  ]))
                ],
              ));
  }
}

Widget _orders(BuildContext context) {
  return Column(
    children: [_cardOrder(context)],
  );
}

Widget _cardOrder(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    margin: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color.fromRGBO(248, 248, 248, 1.0),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(210, 211, 215, 1.0),
              spreadRadius: 1.0,
              blurRadius: 4.0)
        ]),
    child: Column(
      children: [
        Row(
          children: [_cardOrderTopContent()],
        ),
        Column(
          children: [
            _items(context),
            _items(context),
            _items(context),
            _items(context)
          ],
        ),
        _moreContent(context)
      ],
    ),
  );
}

Widget _cardOrderTopContent() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 7.0, bottom: 7.0, right: 20.0),
          child: headerText(
              text: 'El Ascensor', fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.location_on, color: gris, size: 16),
              headerText(
                  text: 'Calle Comercio 2',
                  color: gris,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: 110.0,
                  height: 20.0,
                  child: createButton(
                      shape: StadiumBorder(),
                      labelButton: 'Free Delivery',
                      labelFontSize: 11.0,
                      buttonColor: orange,
                      func: () {})),
            ],
          ),
        )
      ],
    ),
  );
}

Widget _items(context) {
  return Container(
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerText(
              text: 'Patatas bravas',
              color: orange,
              fontWeight: FontWeight.bold,
              fontSize: 15.0),
          headerText(
              text: 'Patatas con salva picante',
              color: gris,
              fontWeight: FontWeight.bold,
              fontSize: 12.0),
        ],
      ),
      trailing: headerText(
          text: '6.20 €',
          color: gris,
          fontWeight: FontWeight.w500,
          fontSize: 15.0),
    ),
  );
}

Widget _moreContent(context) {
  return Container(
    child: ListTile(
      title: headerText(
          text: 'Añade más platos',
          color: rosa,
          fontWeight: FontWeight.w600,
          fontSize: 17.0),
    ),
  );
}

Widget _checkOutResume(context) {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: white,
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(210, 211, 215, 1.0),
              spreadRadius: 1.0,
              blurRadius: 4.0)
        ]),
    child: Column(
      children: [
        _itemsCheckOutResume(
            title: 'Subtotal', value: '20.80 €', context: context),
        _itemsCheckOutResume(title: 'IVA', value: '2.75 €', context: context),
        _itemsCheckOutResume(
            title: 'Delivery', value: 'Free', context: context),
        _buttonCheckOut(context)
      ],
    ),
  );
}

Widget _itemsCheckOutResume(
    {title: String, value: String, context: BuildContext}) {
  return Container(
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title:
          headerText(text: title, fontWeight: FontWeight.w400, fontSize: 15.0),
      trailing:
          headerText(text: value, fontWeight: FontWeight.w400, fontSize: 15.0),
    ),
  );
}

Widget _buttonCheckOut(context) {
  return Container(
    width: double.infinity,
    height: 45.0,
    margin: EdgeInsets.only(top: 10.0),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0.5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          primary: orange),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Container(
            margin: EdgeInsets.only(left: 50.0),
            child: headerText(
                text: 'Pedir',
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: white),
          ),
          Container(
            child: headerText(
                text: '25.60€',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: white),
          )
        ],
      ),
    ),
  );
}
