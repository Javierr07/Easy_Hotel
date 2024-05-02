import 'package:meta/meta.dart';

@immutable
abstract class NavigationEvent {}

class NavigateToHomeScreen extends NavigationEvent {}