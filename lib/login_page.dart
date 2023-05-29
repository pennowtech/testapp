import 'package:flutter/material.dart';

class LoginComponent extends StatefulWidget {
  const LoginComponent({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginComponentState();
  }
}

class _LoginComponentState extends State<LoginComponent> {
  String buttonText = 'Login';
  String imagePath = 'assets/images/Login.png';
  void handleButtonPress() {
    setState(() {
      if (buttonText == 'Login') {
        buttonText = 'Logout';
      } else {
        buttonText = 'Login';
      }
      // Update the image path based on the button text
      imagePath = 'assets/images/$buttonText.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: handleButtonPress,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: 200,
            height: 200,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            buttonText,
            style: const TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
