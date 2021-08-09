import 'package:flutter/material.dart';
//Colors
import 'package:delivery/src/colors/colors.dart';
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';

class ProfileTab extends StatefulWidget {
  ProfileTab({Key? key}) : super(key: key);

  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: ()=> Navigator.pushNamed(context, 'profile-detail'),
          child: _header()),
          _contentProfile(),
        ],
      ),
    );
  }
}

Widget _header() {
  return Container(
    height: 250.0,
    color: bgGreyPage,
    padding: EdgeInsets.all(50),
    child: Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fHBlcnNvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
          radius: 50,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  headerText(
                      text: 'Pepito Palotes',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right, color: gris))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              height: 25.0,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: rosa,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/images/crown.png'),
                        width: 16,
                        height: 16,
                        color: white,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: headerText(
                            text: 'VIP Member', color: white, fontSize: 11.0),
                      ),
                    ],
                  ),
                  onPressed: () {}),
            )
          ],
        )
      ],
    ),
  );
}

Widget _contentProfile() {
  return Container(
    padding: EdgeInsets.all(10.0),
    child: Column(
      children: [
        ListTile(
          leading: Image(
            image: AssetImage('assets/images/noti.png'),
            width: 29.0,
            height: 29.0,
          ),
          title:
              headerText(text: 'Notificaciones', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right, color: gris),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/images/payicon.png'),
            width: 29.0,
            height: 29.0,
          ),
          title:
              headerText(text: 'Método de pago', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right, color: gris),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/images/rewardicon.png'),
            width: 29.0,
            height: 29.0,
          ),
          title: headerText(text: 'Historial', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right, color: gris),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/images/promoicon.png'),
            width: 29.0,
            height: 29.0,
          ),
          title: headerText(text: 'Promociones', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right, color: gris),
        ),
        SizedBox(height: 20.0),
        ListTile(
          leading: Image(
            image: AssetImage('assets/images/settingicon.png'),
            width: 29.0,
            height: 29.0,
          ),
          title: headerText(text: 'Configuración', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right, color: gris),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/images/inviteicon.png'),
            width: 29.0,
            height: 29.0,
          ),
          title: headerText(
              text: 'Invitar a un amigo', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right, color: gris),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/images/helpicon.png'),
            width: 29.0,
            height: 29.0,
          ),
          title: headerText(text: 'Ayuda', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right, color: gris),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/images/abouticon.png'),
            width: 29.0,
            height: 29.0,
          ),
          title: headerText(text: 'Información', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right, color: gris),
        ),
      ],
    ),
  );
}
