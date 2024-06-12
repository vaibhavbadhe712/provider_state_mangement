import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_program/utils/routs/app_routs.dart';

class routesController with ChangeNotifier {

void gotoPhoneScreen(BuildContext context) {
    context.go(Routes.initalRoute);
        notifyListeners(); 
  }

  void gotoSecoundScrren(BuildContext context) {
    context.go(Routes.secoundScreen);
        notifyListeners(); 
  }
  

}
