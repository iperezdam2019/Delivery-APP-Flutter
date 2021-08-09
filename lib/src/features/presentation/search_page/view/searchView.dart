import 'package:flutter/material.dart';

//Commons Widgets

import 'package:delivery/src/features/presentation/commons_widgets/cards/vertical_card.dart';
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_double.dart';
import 'package:delivery/src/features/presentation/commons_widgets/cards/populares_card.dart';
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';

//Colors
import 'package:delivery/src/colors/colors.dart';

//Swipper
import 'package:flutter_swiper/flutter_swiper.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.close,
                  color: Colors.black,
                  size: 30.0,
                )),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
            [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 10.0),
                        alignment: Alignment.centerLeft,
                        child: headerText(
                            text: 'Search',
                            color: Colors.black,
                            fontSize: 30.0)),
                    _searchInput(context),
                    SizedBox(
                      height: 30.0,
                    ),
                    headerDoubleText(
                        textHeader: 'Recent search',
                        textAction: 'Clear All',
                        func: () => print('Clear All')),
                    _sliderRecentSearch(),
                    SizedBox(
                      height: 20.0,
                    ),
                    headerDoubleText(
                        textHeader: 'Recommend for you',
                        textAction: '',
                        func: () => print('Recommend for you')),
                        SizedBox(height: 10.0),
                    popularesCard(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1506084868230-bb9d95c24759?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fGZvb2R8ZW58MHwxfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                        title: 'El Ascensor',
                        subtilte: 'Pasaje centro',
                        review: '5.0',
                        ratings: '69 ratings',
                        hasActionButton: false),
                    popularesCard(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1432139509613-5c4255815697?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGZvb2R8ZW58MHwxfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                        title: 'El Merengue',
                        subtilte: 'Calle Denia 1',
                        review: '5.0',
                        ratings: '35 ratings',
                        hasActionButton: false),
                    popularesCard(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1601314002592-b8734bca6604?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fGZvb2R8ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                        title: 'Taberna Juanito',
                        subtilte: 'Calle Sant Joan, 2',
                        review: '3.0',
                        ratings: '63 ratings',
                        hasActionButton: false),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}

Widget _searchInput(BuildContext context) {
  return Container(
    height: 40.0,
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 5.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(20.0)),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5.0),
          prefixIcon: Icon(Icons.search, color: gris),
          hintText: 'Search',
          //quitar el borde
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _sliderRecentSearch() {
  return Container(
    margin: EdgeInsets.only(top: 5.0),
    height: 190.0,
    child: Swiper(
        itemCount: 4,
        layout: SwiperLayout.DEFAULT,
        itemBuilder: (BuildContext context, int index) {
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return cardVertical(
                    context: context,
                    width: 160.0,
                    height: 120.0,
                    title: 'El Merengue',
                    subtitle: 'Calle Denia 1',
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1481070555726-e2fe8357725c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fGZvb2R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'));
              });
        }),
  );
}
