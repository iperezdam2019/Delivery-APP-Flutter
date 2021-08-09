import 'package:flutter/material.dart';
//Colors
import 'package:delivery/src/colors/colors.dart';
//Commons Widgets
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';
import 'package:delivery/src/features/presentation/commons_widgets/cards/favourites_card.dart';

class FavouriteTab extends StatefulWidget {
  FavouriteTab({Key? key}) : super(key: key);

  @override
  _FavouriteTabState createState() => _FavouriteTabState();
}

class _FavouriteTabState extends State<FavouriteTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Text(''),
            backgroundColor: white,
            centerTitle: true,
            title: headerText(
                text: 'My favourites',
                color: primaryColor,
                fontSize: 17,
                fontWeight: FontWeight.w600),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
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
              ],
            ),),
          ]))
        ],
      ),
    );
  }
}
