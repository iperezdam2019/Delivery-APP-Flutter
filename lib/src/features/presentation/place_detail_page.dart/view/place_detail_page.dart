import 'package:delivery/src/features/presentation/commons_widgets/buttons/roundend_button.dart';
import 'package:flutter/material.dart';
//Colors
import 'package:delivery/src/colors/colors.dart';

//Commons Widgets
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';
import 'package:delivery/src/features/presentation/commons_widgets/backButtons/back_button.dart';
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_double.dart';

class PlaceDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: orange,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          label: headerText(
              text: 'Añadir a la cesta 95.40€',
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 17.0)),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: orange,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                      width: double.infinity,
                      height: 350,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1565599837634-134bc3aadce8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3BhbmlzaCUyMGZvb2R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1.3),
                    ),
                    width: double.infinity,
                    height: 350.0,
                  ),
                  Wrap(children: [
                    _promoButton(),
                    _infoPlace(),
                    _infoPlaceStats(),
                   // _offerBanner(),
                  ])
                ],
              ),
            ),
            leading: Builder(
              builder: (BuildContext context) {
                return backButton(context, Colors.white);
              },
            ),
            actions: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: Image(
                    width: 25,
                    height: 25,
                    color: Colors.white,
                    image: AssetImage('assets/images/share.png')),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                    size: 30,
                  ))
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              _headers(texto: 'Populars'),
              _sliderCards(),
              _headers(texto: 'Full Menu'),
              _menuList(context),
              _headers(texto: 'Reviews'),
              _reviews(),
              _headers(texto: 'Your Rating'),
              _yourRating(),
              SizedBox(height: 150.0)
            ]),
          ),
        ],
      ),
    );
  }
}

Widget _promoButton() {
  return Container(
    margin: EdgeInsets.only(top: 121.0, left: 30.0, right: 15.0),
    width: double.infinity,
    height: 25.0
    /*
    child: Row(
      children: [
        createButton(
          labelButton:'Free Delivery',
          labelFontSize: 12.0,
          buttonColor: orange, 
          func: (){})
      ],
    ),*/
  );
}

Widget _infoPlace() {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        margin: EdgeInsets.symmetric(vertical: 7.0),
        child: headerText(
            text: 'Las mejores brabas de la zona',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          children: [
            Icon(Icons.location_on, color: gris),
            headerText(
                text: 'Paseo del Comercio, 55',
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15.0),
          ],
        ),
      )
    ],
  );
}

Widget _infoPlaceStats() {
  return Container(
    margin: EdgeInsets.only(top: 26.0),
    padding: EdgeInsets.symmetric(horizontal: 40.0),
    height: 70.0,
    decoration: BoxDecoration(
        border: Border(
            top: BorderSide(color: Colors.white),
            bottom: BorderSide(color: Colors.white))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.star, color: Colors.white, size: 19.0),
                headerText(
                    text: '4.9',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ],
            ),
            headerText(
                text: '351 Ratings',
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0)
          ],
        ),
        Container(
          height: 40.0,
          decoration: BoxDecoration(
            border: Border(right: BorderSide(color: Colors.white)),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.bookmark, color: Colors.white, size: 19.0),
                headerText(
                    text: '137k',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ],
            ),
            headerText(
                text: 'Favourites',
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0)
          ],
        ),
        Container(
          height: 40.0,
          decoration: BoxDecoration(
            border: Border(right: BorderSide(color: Colors.white)),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.photo, color: Colors.white, size: 19.0),
                headerText(
                    text: '345',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ],
            ),
            headerText(
                text: 'Photos',
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0)
          ],
        ),
      ],
    ),
  );
}

Widget _offerBanner() {
  return Container(
    color: Color.fromRGBO(255, 237, 214, 1.0),
    padding: EdgeInsets.all(20.0),
    height: 95.0,
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerText(
                text: '¡Nuevas ofertas !',
                color: orange,
                fontWeight: FontWeight.bold,
                fontSize: 15.0),
            headerText(
                text:
                    'Compra ahora y recibe ya en tu casa \n en un tiempo récord.',
                color: primaryColor,
                fontWeight: FontWeight.w400,
                fontSize: 13.0),
          ],
        ),
        Spacer(),
        createButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          buttonColor: orange, 
          labelButton: 'Order now',
          labelFontSize: 13.0,
          func: (){})
      ],
    ),
  );
}

Widget _headers({texto: String}) {
  return Container(
    margin: EdgeInsets.only(top: 20.0, bottom: 5.0),
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: headerDoubleText(textHeader: texto, textAction: '', func: () {}),
  );
}

Widget _sliderCards() {
  return Container(
    height: 210.0,
    padding: EdgeInsets.only(left: 10.0),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return _cards();
      },
    ),
  );
}

Widget _cards() {
  return Container(
    margin: EdgeInsets.all(8.0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image(
            width: 200,
            height: 100,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://images.unsplash.com/photo-1622883464819-e086aa5d4830?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fHNwYW5pc2glMjBmb29kfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')),
      ),
      Container(
          margin: EdgeInsets.only(top: 10.0),
          child: headerText(
              text: 'Peanut Chaat  with Dahi',
              fontWeight: FontWeight.bold,
              fontSize: 15.0)),
      Container(
          alignment: Alignment.centerLeft,
          child: headerText(
              text: '9.50 €',
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
              color: gris)),
      Row(
        children: [
          Container(
              margin: EdgeInsets.only(top: 10),
              child: headerText(
                  text: 'Selecciona',
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0,
                  color: orange)),
          Container(
            margin: EdgeInsets.only(top: 5, left: 90),
            child: Image(
                width: 20,
                height: 20,
                fit: BoxFit.cover,
                color: orange,
                image: AssetImage('assets/images/plus.png')),
          )
        ],
      )
    ]),
  );
}

Widget _menuList(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 10.0),
    child: Column(
      children: [
        _menuItem(context, 'Salads', '2'),
        _menuItem(context, 'Chicken', '5'),
        _menuItem(context, 'Soups', '6'),
        _menuItem(context, 'Vegetables', '2'),
      ],
    ),
  );
}

Widget _menuItem(BuildContext context, String texto, String itemCount) {
  return Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: gris))),
    child: Column(
      children: [
        ListTile(
          title: headerText(
              text: texto, fontWeight: FontWeight.w300, fontSize: 17.0),
          trailing: headerText(
              text: itemCount, fontWeight: FontWeight.w300, fontSize: 17.0),
        ),
        _sliderCards()
      ],
    ),
  );
}

Widget _reviews() {
  return Container(
    height: 135.0,
    padding: EdgeInsets.only(left: 10),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return _cardReViews();
      },
    ),
  );
}

Widget _cardReViews() {
  var lorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt";
  return Container(
    width: 340.0,
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.only(left: 10, right: 10),
    child: Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image(
                  width: 49,
                  height: 43,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1618835962148-cf177563c6c0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODh8fHBlcnNvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headerText(
                      text: 'Pepita Pérez',
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                  headerText(
                      text: '45 Reviews',
                      fontWeight: FontWeight.w500,
                      color: gris,
                      fontSize: 12.0)
                ],
              ),
            ),
            Spacer(),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: orange,
                  width: 60,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          text: '4',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                      Icon(Icons.star, color: Colors.white, size: 14)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: headerText(
              text: lorem,
              color: gris,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.left,
              fontSize: 12),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: headerText(
              text: 'See full review',
              color: orange,
              fontWeight: FontWeight.w500,
              fontSize: 15),
        )
      ],
    ),
  );
}

Widget _yourRating() {
    var lorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt";
  return Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.only(left: 10, right: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: orangeWithHalfOpacity,
                  width: 60,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          text: '1',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                      Icon(Icons.star, color: Colors.white, size: 14)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: orangeWithHalfOpacity,
                  width: 60,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          text: '2',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                      Icon(Icons.star, color: Colors.white, size: 14)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: orangeWithHalfOpacity,
                  width: 60,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          text: '3',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                      Icon(Icons.star, color: Colors.white, size: 14)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: orange,
                  width: 60,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          text: '4',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                      Icon(Icons.star, color: Colors.white, size: 14)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: orangeWithHalfOpacity,
                  width: 60,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          text: '5',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                      Icon(Icons.star, color: Colors.white, size: 14)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 10),
          child: headerText(
              text: lorem,
              color: gris,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.left),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 20),
          child: headerText(
            text: '+ Edita tu comentario',
            color: orange,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    ),
  );
}
