
import 'package:flutter/material.dart';

//Colors
import 'package:delivery/src/colors/colors.dart';

// Commons Widgets
import 'package:delivery/src/features/presentation/commons_widgets/alerts/alert_dialog.dart';
import 'package:delivery/src/features/presentation/commons_widgets/buttons/roundend_button.dart';

//Tabs
import 'package:delivery/src/features/presentation/tabs/explore_tab/view/explore_tab.dart';
import 'package:delivery/src/features/presentation/tabs/favourite_tap/view/favourite_tab.dart';
import 'package:delivery/src/features/presentation/tabs/my_order_tab/view/my_order_tab.dart';
import 'package:delivery/src/features/presentation/tabs/profile_tab/view/profile_tab.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key? key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  
  
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, (){
      _pedirLocation(context);
    });
  }

  List<Widget> _widgetOptions = [
    ExploreTab(),
    MyOrderTab(),
    FavouriteTab(),
    ProfileTab()
  ];

  int _selectedItemIndex = 0;

  void _changeWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30.0,
      selectedItemColor: orange,
      unselectedItemColor: Colors.grey,
      currentIndex: _selectedItemIndex,
      onTap: _changeWidget,
      showUnselectedLabels: true, //para que se vea el texto inferior del icono
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
        BottomNavigationBarItem(
            icon: Icon(Icons.assignment), label: 'My Order'),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Favourite'),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: 'Profile'),
      ],
    );
  }
}


Future _pedirLocation(context) async{
  await showAlertDialog(context, AssetImage('assets/images/location.png'), 
  'Enable Your Location', 
  'Please allow to use your location to show nearby restaurant on the map', 
  //_doneButton(context, 'Enable Location')
    createButton(buttonColor: orange, labelButton: 'Enable Location', func: (){

    }));

}

