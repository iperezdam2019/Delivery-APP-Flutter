import 'package:flutter/material.dart';

// Colors
import 'package:delivery/src/colors/colors.dart';

// Customs Widgets
import 'package:delivery/src/features/presentation/filter_page/view/components/cuisines_filters.dart';
import 'package:delivery/src/features/presentation/filter_page/view/components/list_tile_checked.dart';
import 'package:delivery/src/features/presentation/filter_page/view/components/price_filter.dart';
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';

class FilterPage extends StatefulWidget {
  FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
// SORT BY BOOLEANS
  bool topRated = false;
  bool nearMe = false;
  bool costHighToLow = false;
  bool costLowToHigh = false;
  bool mostPopular = false;

  // FILTER  BOOLEANS
  bool openNow = false;
  bool creditsCards = false;
  bool alcoholServed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: _appBar(context), preferredSize: Size.fromHeight(50.0)),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
              child: headerText(
                  text: 'CUISINES',
                  color: gris,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: CuisinesFilter()),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
              child: headerText(
                  text: 'SORT BY',
                  color: gris,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0),
            ),
            _sortByContainer(),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
              child: headerText(
                  text: 'FILTER',
                  color: gris,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0),
            ),
            _filterContainer(),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
              child: headerText(
                  text: 'PRICE',
                  color: gris,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0),
            ),
            PriceFilter(),
          ])),
        ],
      ),
    );
  }

  Widget _sortByContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          ListTileCheck(
            texto: 'Top Rated',
            isActive: topRated,
            func: () {
              setState(() => topRated = !topRated);
            },
          ),
          ListTileCheck(
            texto: 'Nearest Me',
            isActive: nearMe,
            func: () {
              setState(() => nearMe = !nearMe);
            },
          ),
          ListTileCheck(
            texto: 'Cost High to Low',
            isActive: costHighToLow,
            func: () {
              setState(() => costHighToLow = !costHighToLow);
            },
          ),
          ListTileCheck(
            texto: 'Coost High to High',
            isActive: costLowToHigh,
            func: () {
              setState(() => costLowToHigh = !costLowToHigh);
            },
          ),
          ListTileCheck(
            texto: 'Most Popular',
            isActive: mostPopular,
            func: () {
              setState(() => mostPopular = !mostPopular);
            },
          ),
        ],
      ),
    );
  }

  Widget _filterContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          ListTileCheck(
            texto: 'Open Now',
            isActive: openNow,
            func: () {
              setState(() {
                openNow = !openNow;
              });
            },
          ),
          ListTileCheck(
            texto: 'Credits Cards',
            isActive: creditsCards,
            func: () {
              setState(() => creditsCards = creditsCards);
            },
          ),
          ListTileCheck(
            texto: 'Alcohol Served',
            isActive: alcoholServed,
            func: () {
              setState(() => alcoholServed = !alcoholServed);
            },
          ),
        ],
      ),
    );
  }
}

Widget _appBar(BuildContext context) {
  return AppBar(
    elevation: 1.0,
    backgroundColor: Colors.white,
    title:
        Center(child: headerText(text: 'Filters', fontWeight: FontWeight.w600)),
    leading: Container(
        padding: EdgeInsets.only(top: 15.0, left: 7.0),
        child: headerText(
            text: 'Reset', fontWeight: FontWeight.w500, fontSize: 17.0)),
    actions: [
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
            padding: EdgeInsets.only(top: 15.0, right: 7.0),
            child: headerText(
                text: 'Done',
                color: orange,
                fontWeight: FontWeight.w500,
                fontSize: 17.0)),
      )
    ],
  );
}
