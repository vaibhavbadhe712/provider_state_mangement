import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_program/provider_controller/button_controller.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Consumer<ButtonController>(
            builder: (context, buttonModel, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonModel.isButtonVisible
                      ? ElevatedButton(
                          onPressed: () {},
                          child: Text('Hello'),
                        )
                      : ElevatedButton(
                          onPressed: () {},
                          child: Text('Bye'),
                        ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<ButtonController>().toggleButtonVisibility();
                    },
                    child: Text('Toggle Button Visibility'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
