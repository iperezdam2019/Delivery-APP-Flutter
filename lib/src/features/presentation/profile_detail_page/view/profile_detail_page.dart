import 'package:delivery/src/features/presentation/commons_widgets/backButtons/back_button.dart';
import 'package:delivery/src/features/presentation/profile_detail_page/view/componets/avatar_view.dart';
import 'package:delivery/src/features/presentation/profile_detail_page/view/componets/textfields_view.dart';
import 'package:delivery/src/utils/extensions/styles/box_decoration_shadows.dart';
import 'package:flutter/material.dart';

//Commons Widgets
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';

//Colors
import 'package:delivery/src/colors/colors.dart';

//Extensions
import 'package:delivery/src/utils/extensions/screen_size.dart';

class ProfileDetailPage extends StatefulWidget {
  ProfileDetailPage({Key? key}) : super(key: key);

  @override
  _ProfileDetailPage createState() => _ProfileDetailPage();
}

class _ProfileDetailPage extends State<ProfileDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      appBar: AppBar(
        title: headerText(
          text: 'Editar Perfil',
          fontSize: 17.0,
        ),
        backgroundColor: white,
        elevation: 0.4,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          },
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(top: 20, right: 15.0),
              child: headerText(
                  text: 'Done',
                  color: orange,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              margin: EdgeInsets.only(
                  top: screenHigth.getScreenHeight(
                      context: context, multiplier: 0.1),
                  left: 15.0,
                  right: 15.0),
              decoration: createBoxDecorationWithShadows(),
              width: screenWidth.getScreenWidth(context: context),
              height: screenHigth.getScreenHeight(
                  context: context, multiplier: 0.70),
              child: Column(
                children: [
                  Transform.translate(
                      offset: Offset(0, -60),
                      child: AvatarView(
                          backgroundImage:
                              'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fHBlcnNvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')),
                  TextFieldsProfileDetailView(),
                ],
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
