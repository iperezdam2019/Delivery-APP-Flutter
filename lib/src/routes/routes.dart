import 'package:flutter/material.dart';
// Pages
import 'package:delivery/src/features/presentation/forgot_password_page/view/forgot_password_page.dart';
import 'package:delivery/src/features/presentation/login_page/view/login_page.dart';
import 'package:delivery/src/features/presentation/sin_up_page/view/sing_up_page.dart';
import 'package:delivery/src/features/presentation/tabs/tabs_page.dart';
import 'package:delivery/src/features/presentation/welcome_page/view/welcome_page.dart';
import 'package:delivery/src/features/presentation/search_page/view/searchView.dart';
import 'package:delivery/src/features/presentation/filter_page/view/filter_page.dart';
import 'package:delivery/src/features/presentation/collections_page/view/collections_page.dart';
import 'package:delivery/src/features/presentation/collection_detail_page/view/collection_detail_page.dart';
import 'package:delivery/src/features/presentation/place_detail_page.dart/view/place_detail_page.dart';
import 'package:delivery/src/features/presentation/profile_detail_page/view/profile_detail_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgot-password': (BuildContext context) => ForgotPassword(),
  'sign-up': (BuildContext context) => SingUpPage(),
  'tabs': (BuildContext context) => TabsPage(),
  'search': (BuildContext context) => SearchPage(),
  'filter': (BuildContext context) => FilterPage(),
  'collections': (BuildContext context) => CollectionsPage(),
  'collections-detail': (BuildContext context) => CollectionDetailPage(),
  'place-detail': (BuildContext context) => PlaceDetailPage(),
  'profile-detail': (BuildContext context) => ProfileDetailPage(),
};
