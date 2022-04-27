import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late AnimateIconController c1, c2, c3;

  @override
  void initState() {
    c1 = AnimateIconController();
    c2 = AnimateIconController();
    c3 = AnimateIconController();
    super.initState();
  }

  bool onEndIconPress(BuildContext context) {
    return true;
  }

  bool onStartIconPress(BuildContext context) {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  children: [
                    AnimateIcons(
                      startIcon: Icons.add_circle,
                      endIcon: Icons.cancel_outlined,
                      controller: c1,
                      size: 45.0,
                      onEndIconPress: () => onEndIconPress(context),
                      onStartIconPress: () => onStartIconPress(context),
                    ),
                    AnimateIcons(
                      startIcon: Icons.star,
                      endIcon: Icons.star_border,
                      controller: c2,
                      size: 45.0,
                      onEndIconPress: () => onEndIconPress(context),
                      onStartIconPress: () => onStartIconPress(context),
                    ),
                    AnimateIcons(
                      startIcon: Icons.check_box,
                      endIcon: Icons.check_box_outline_blank,
                      controller: c3,
                      size: 45.0,
                      onEndIconPress: () => onEndIconPress(context),
                      onStartIconPress: () => onStartIconPress(context),
                    ),
                  ],
                ),
              ],
            )
          )
        ),
      ),
    );
  }
}
