import 'dart:math';

import 'package:flutter/material.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  ButtonState _buttonState = ButtonState.idle;
  ButtonState _button2State = ButtonState.idle;

  @override
  void initState() {
    super.initState();
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
                ProgressButton.icon(
                  iconedButtons: {
                    ButtonState.idle: const IconedButton(
                        text: "Send",
                        icon: Icon(Icons.send, color:Colors.white),
                        color: Colors.black),
                    ButtonState.loading: const IconedButton(
                        text: "Loading", color: Colors.black),
                    ButtonState.fail: IconedButton(
                        text: "Failed",
                        icon: const Icon(Icons.cancel, color: Colors.white),
                        color: Colors.red.shade300),
                    ButtonState.success: IconedButton(
                        text: "Success",
                        icon: const Icon(
                          Icons.check_circle,
                          color: Colors.white,
                        ),
                        color: Colors.green.shade400)
                  },
                  onPressed: onPressedButton,
                  state: _buttonState,
                ),
                const SizedBox(height: 50.0),
                ProgressButton.icon(
                  iconedButtons: {
                    ButtonState.idle: const IconedButton(
                        text: "Send",
                        icon: Icon(Icons.send, color:Colors.white),
                        color: Colors.black),
                    ButtonState.loading: const IconedButton(
                        text: "Loading", color: Colors.black),
                    ButtonState.fail: IconedButton(
                        text: "Failed",
                        icon: const Icon(Icons.cancel, color: Colors.white),
                        color: Colors.red.shade300),
                    ButtonState.success: IconedButton(
                        text: "Success",
                        icon: const Icon(
                          Icons.check_circle,
                          color: Colors.white,
                        ),
                        color: Colors.green.shade400)
                  },
                  onPressed: onPressedButton2,
                  state: _button2State,
                ),
              ],
            )
          )
        ),
      ),
    );
  }

  void onPressedButton() {
    switch (_buttonState) {
      case ButtonState.idle:
        _buttonState = ButtonState.loading;
        Future.delayed(Duration(seconds: 1), () {
          setState(() {
            // _buttonState =  Random.secure().nextBool() ? ButtonState.success : ButtonState.fail;
            _buttonState = ButtonState.success;
          });
        });
        break;
      case ButtonState.loading:
        break;
      case ButtonState.success:
        _buttonState = ButtonState.idle;
        break;
      case ButtonState.fail:
        _buttonState = ButtonState.idle;
        break;
    }
    setState(() {
      _buttonState = _buttonState;
    });
  }

  void onPressedButton2() {
    switch (_button2State) {
      case ButtonState.idle:
        _button2State = ButtonState.loading;
        Future.delayed(Duration(seconds: 1), () {
          setState(() {
            _button2State = ButtonState.fail;
          });
        });
        break;
      case ButtonState.loading:
        break;
      case ButtonState.success:
        _button2State = ButtonState.idle;
        break;
      case ButtonState.fail:
        _button2State = ButtonState.idle;
        break;
    }
    setState(() {
      _button2State = _button2State;
    });
  }
}
