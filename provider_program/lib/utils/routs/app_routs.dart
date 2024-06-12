import 'package:go_router/go_router.dart';
import 'package:provider_program/presentation/home_screen.dart';
import 'package:provider_program/presentation/seound_screen.dart';
import 'package:provider_program/utils/local_preference.dart';

class Routes {
  static const String singleSignOn = '/singleSignOn?groupId&token';
  static const String initalRoute = '/home';
  static const String secoundScreen = '/secoundscreen';

  GoRouter get router => _goRouter;

  late final GoRouter _goRouter = GoRouter(
    initialLocation: initalRoute,
    routes: [
      // GoRoute(
      //   path: '/singleSignOn',
      //   builder: (BuildContext context, GoRouterState state) {
      //     final groupId = state.queryParams['groupId'] ?? "";
      //     final token = state.queryParams['token'] ?? '';
      //     return SingleSignOn(groupId: groupId, token: token);
      //   },
      // ),
      GoRoute(
        path: initalRoute,
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: secoundScreen,
        builder: (context, state) => SecondScreen(), 
      ),
    ],
  );

  // ignore: non_constant_identifier_names
  String _CheckUserLogin() {
    final grouId = LocalStorageUtils.instance.getString('groupId');
    // String id = LocalStorageUtils.tokenResponseModel.userId.toString();
    if (grouId != null && grouId.isNotEmpty) {
      // LocalStorageUtils.userId(id);
      return Routes.secoundScreen;
    }
    return Routes.initalRoute;
  }
}
