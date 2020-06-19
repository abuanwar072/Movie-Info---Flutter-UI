import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
      ],
    );
  }
}
