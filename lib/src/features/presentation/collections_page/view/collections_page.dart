// Commons Widgets
import 'package:delivery/src/features/presentation/commons_widgets/backButtons/back_button.dart';
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';
import 'package:flutter/material.dart';

class CollectionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 30.0),
              child: headerText(text: 'Collections', fontSize: 20.0)),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.black);
            }),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 30.0, right: 20.0),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              children: [
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _card(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'collections-detail');
    },
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
              width: 165,
              height: 190,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1583835746434-cf1534674b41?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzN8fGFzaWElMjBmb29kfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')),
        ),
        Container(
          width: 165,
          height: 190,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 1.3),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: 35, bottom: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              headerText(
                  text: 'Asia',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
              headerText(
                  text: '128 places',
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 15.0)
            ],
          ),
        )
      ],
    ),
  );
}
