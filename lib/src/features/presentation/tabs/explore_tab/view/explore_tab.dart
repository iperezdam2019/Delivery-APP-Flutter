import 'package:delivery/src/features/presentation/commons_widgets/buttons/roundend_button.dart';
import 'package:flutter/material.dart';

// Colors
import 'package:delivery/src/colors/colors.dart';

// Commons Widgets
import 'package:delivery/src/features/presentation/commons_widgets/cards/populares_card.dart';
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';

//Swiper
import 'package:flutter_swiper/flutter_swiper.dart';

class ExploreTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                children: [
                  _topBar(context),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    alignment: Alignment.centerLeft,
                    child: headerText(
                        text: 'Discover new places',
                        color: Colors.black,
                        fontSize: 30),
                  ),
                  _sliderCards(),
                  _headers(context, 'Popular this week', 'Show all'),
                  popularesCard(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1432139509613-5c4255815697?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGZvb2R8ZW58MHwxfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                      title: 'El Merengue',
                      subtilte: 'Calle Denia 1',
                      review: '5.0',
                      ratings: '(235 ratings)',
                      buttonText: 'Delivery',
                      hasActionButton: true),
                  popularesCard(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1601314002592-b8734bca6604?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fGZvb2R8ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                      title: 'Taberna Juanito',
                      subtilte: 'Calle Sant Joan, 2',
                      review: '3.0',
                      ratings: '(163 ratings)',
                      buttonText: 'Delivery',
                      hasActionButton: true),
                  popularesCard(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1506084868230-bb9d95c24759?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fGZvb2R8ZW58MHwxfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                      title: 'El Ascensor',
                      subtilte: 'Pasaje centro',
                      review: '5.0',
                      ratings: '(363 ratings)',
                      buttonText: 'Delivery',
                      hasActionButton: true),
                  SizedBox(height: 10.0),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'collections');
                      },
                      child: _headers(context, 'Collections', 'Show all')),
                  _sliderCollections()
                ],
              ),
            ),
          ]),
        )
      ],
    ));
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'search'),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            width: 310,
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.only(left: 16.0),
            decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
                borderRadius: BorderRadius.circular(20.0)),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  size: 20.0,
                  color: gris,
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Search',
                    style: TextStyle(color: gris, fontSize: 17.0),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Container(
          width: 45.0,
          height: 45.0,
          margin: EdgeInsets.only(left: 10.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(209, 209, 214, 1.0),
              borderRadius: BorderRadius.circular(30.0)),
          child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'filter');
              },
              icon: Icon(
                Icons.filter_list,
                size: 30,
                color: Colors.white,
              )),
        ),
      ),
      Container(),
    ],
  );
}

Widget _sliderCards() {
  return Container(
    height: 350.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _card(context);
          },
        );
      },
    ),
  );
}

Widget _card(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'place-detail');
    },
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
                width: 200.0,
                height: 250.0,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZvb2R8ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text(
                  'El Merengue',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Calle Dénia, 1',
                  style: TextStyle(
                      color: gris, fontWeight: FontWeight.w500, fontSize: 13.0),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: amarillo,
                    size: 16.0,
                  ),
                  Text(
                    "5",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0),
                  ),
                  Text(
                    " (300 ratings)",
                    style: TextStyle(
                        color: gris,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      width: 80.0,
                      height: 18.0,
                      child: createButton(
                          shape: StadiumBorder(),
                          labelButton: "Delivery",
                          labelFontSize: 11.0,
                          buttonColor: orange,
                          func: () {}))
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        //margin: EdgeInsets.symmetric(vertical: 20.0),
        alignment: Alignment.centerLeft,
        child: headerText(text: textHeader, color: Colors.black, fontSize: 20),
      ),
      Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(
              textAction,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0),
            ),
            Icon(Icons.play_arrow)
          ],
        ),
      ),
    ],
  );
}

Widget _sliderCollections() {
  return Container(
    height: 180,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _cadCollection(context);
            });
      },
    ),
  );
}

Widget _cadCollection(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
              width: 300,
              height: 150,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1497034825429-c343d7c6a68f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fGZvb2R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')),
        ),
      ],
    ),
  );
}
