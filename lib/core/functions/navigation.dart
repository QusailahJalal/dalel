import 'package:go_router/go_router.dart';

customNavigation(context, String path) {
  GoRouter.of(context).push(path);
}
