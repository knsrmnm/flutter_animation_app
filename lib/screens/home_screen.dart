import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _index = 0;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 4)).then((value) => {
      _changeIndex(1)
    });
  }

  void _changeIndex(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _index,
          children: [
            Center(
              child: LoadingAnimationWidget.staggeredDotsWave(color: Colors.black, size: 50.0),
            ),
            Center(
              child: Text('end loading.'),
            ),
          ],
        )
      ),
    );
  }
}
