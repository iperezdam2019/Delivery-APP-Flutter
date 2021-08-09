
import 'package:flutter/material.dart';

//Commons Widgets
import 'package:delivery/src/features/presentation/commons_widgets/backButtons/back_button.dart';
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';
import 'package:delivery/src/features/presentation/commons_widgets/cards/favourites_card.dart';

//Colors
import 'package:delivery/src/colors/colors.dart';

class CollectionDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 230,
            backgroundColor: orange,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1554054204-b2f70b09d031?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA2fHxhc2lhJTIwZm9vZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1.3),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Center(
                    child: headerText(
                        text: 'Asia \n Restaurant',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        textAlign: TextAlign.center),
                  )
                ],
              ),
            ),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.white);
            }),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    child: headerText(
                        text: '128 places',
                        color: Color.fromRGBO(51, 58, 77, 1.0),
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                  Column(
                    children: [
                      favouritesCard(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1506084868230-bb9d95c24759?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fGZvb2R8ZW58MHwxfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                          title: 'El Ascensor',
                          subtilte: 'Pasaje centro',
                          review: '5.0',
                          ratings: '(363 ratings)',
                          buttonText: 'Delivery',
                          hasActionButton: true,
                          isFavourite: true),
                      favouritesCard(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1506084868230-bb9d95c24759?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fGZvb2R8ZW58MHwxfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                          title: 'El Ascensor',
                          subtilte: 'Pasaje centro',
                          review: '5.0',
                          ratings: '(363 ratings)',
                          buttonText: 'Delivery',
                          hasActionButton: true,
                          isFavourite: false),
                                                favouritesCard(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1506084868230-bb9d95c24759?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fGZvb2R8ZW58MHwxfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                          title: 'El Ascensor',
                          subtilte: 'Pasaje centro',
                          review: '5.0',
                          ratings: '(363 ratings)',
                          buttonText: 'Delivery',
                          hasActionButton: true,
                          isFavourite: true),
                                                favouritesCard(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1506084868230-bb9d95c24759?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fGZvb2R8ZW58MHwxfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                          title: 'El Ascensor',
                          subtilte: 'Pasaje centro',
                          review: '5.0',
                          ratings: '(363 ratings)',
                          buttonText: 'Delivery',
                          hasActionButton: true,
                          isFavourite: true),
                                                favouritesCard(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1506084868230-bb9d95c24759?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fGZvb2R8ZW58MHwxfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                          title: 'El Ascensor',
                          subtilte: 'Pasaje centro',
                          review: '5.0',
                          ratings: '(363 ratings)',
                          buttonText: 'Delivery',
                          hasActionButton: true,
                          isFavourite: true),
                    ],
                  )
                ],
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
