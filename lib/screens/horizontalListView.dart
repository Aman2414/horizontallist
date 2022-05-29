import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:horizontallist/screens/libraryScreen.dart';

import '../widget/change_theme_button.dart';

class Horizontal extends StatefulWidget {
  const Horizontal({Key? key}) : super(key: key);

  @override
  State<Horizontal> createState() => _HorizontalState();
}

class _HorizontalState extends State<Horizontal> {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Theme
            .of(context)
            .scaffoldBackgroundColor,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              title: Text(
                "YouTube",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Theme
                      .of(context)
                      .primaryColor,
                ),
              ),
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Theme
                    .of(context)
                    .backgroundColor,
                statusBarIconBrightness: Theme
                    .of(context)
                    .brightness,
              ),
              backgroundColor: Theme
                  .of(context)
                  .backgroundColor,
              titleSpacing: 0,
              elevation: 0,
              leadingWidth: 45,
              leading: Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  FontAwesomeIcons.youtube,
                  color: Colors.red,
                ),
              ),
              actions: [
                // ChangeThemeButtonWidget(),
                IconButton(
                  splashRadius: 25,
                  onPressed: () {},
                  icon: Icon(
                    Icons.cast,
                    color: Theme
                        .of(context)
                        .primaryColor,
                  ),
                ),
                IconButton(
                  splashRadius: 25,
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none,
                    color: Theme
                        .of(context)
                        .primaryColor,
                  ),
                ),
                IconButton(
                  splashRadius: 25,
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Theme
                        .of(context)
                        .primaryColor,
                  ),
                ),
                IconButton(
                  splashRadius: 25,
                  // iconSize: 15,
                  onPressed: () {},
                  icon: CircleAvatar(
                    radius: 13,
                    backgroundColor: Color.fromARGB(255, 125, 87, 200),
                    child: Center(
                      child: Text(
                        "A",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return libraryScreen();
                },
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
