import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';

import '../widgets/home_body.dart';

import '../widgets/category.dart';

import '../widgets/all_pdts.dart';
import '../screens/cart_screen.dart';
import '../screens/contact.dart';
import '../screens/signup.dart';
import '../common_widget/DrawerWidget.dart';
import '../pages/SignInPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBar(
          title: Image.asset('assets/images/ic_app_icon.png'),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.shopping_basket,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () =>
                    Navigator.of(context).pushNamed(CartScreen.routeName)),
            IconButton(
              icon: Icon(
                Icons.person_pin,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                );
              },
            ),
          ],
        ),
        body: HomeBody());
  }
}
